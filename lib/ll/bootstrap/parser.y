##
# Parser used for bootstrapping ruby-ll's own LL(1) parser.
#
class LL::Bootstrap::Parser

token T_RUBY T_NAME T_TOKENS T_INNER T_HEADER T_IDENT T_EQUALS T_COLON T_PIPE
token T_STAR T_PLUS T_QUESTION T_EPSILON T_SEMICOLON

options no_result_var

rule
  grammar
    : elements   { s(:grammar, val[0]) }
    | /* none */ { s(:grammar) }
    ;

  elements
    : elements element { val[0] << val[1] }
    | element          { val }
    ;

  element
    : directive
    | rule
    ;

  directive
    : name
    | tokens
    | inner
    | header
    ;

  # %name directives

  name
    : T_NAME ident T_SEMICOLON
      {
        s(:name, [val[1]], :source_line => val[0].source_line)
      }
    | T_NAME ident name_ns T_SEMICOLON
      {
        s(:name, [val[1], *val[2]], :source_line => val[0].source_line)
      }
    ;

  name_ns
    : T_COLON T_COLON ident         { [val[2]] }
    | T_COLON T_COLON ident name_ns { [val[2]] + val[3] }
    ;

  # %tokens directive

  tokens
    : T_TOKENS idents T_SEMICOLON
      {
        s(:tokens, val[1], :source_line => val[0].source_line)
      }
    ;

  # Code directives

  inner
    : T_INNER ruby { s(:inner, [val[1]], :source_line => val[0].source_line) }
    ;

  header
    : T_HEADER ruby { s(:header, [val[1]], :source_line => val[0].source_line) }
    ;

  # Generic identifiers

  idents
    : ident        { val }
    | idents ident { val[0] << val[1] }
    ;

  ident
    : T_IDENT { s(:ident, [val[0].value], :source_line => val[0].source_line) }
    ;

  # Identifiers with/without named captures and/or operators.

  idents_or_epsilon
    : idents_or_captures
      {
        s(:steps, val[0], :source_line => val[0][0].source_line)
      }
    | epsilon
      {
        s(:steps, [val[0]], :source_line => val[0].source_line)
      }
    ;

  epsilon
    : T_EPSILON { s(:epsilon, [], :source_line => val[0].source_line) }
    ;

  idents_or_captures
    : ident_or_capture                    { val }
    | idents_or_captures ident_or_capture { val[0] << val[1] }
    ;

  ident_or_capture
    : ident_or_capture_          { val[0] }
    | ident_or_capture_ operator { s(val[1], val[0]) }
    ;

  ident_or_capture_
    : ident
    | capture
    ;

  capture
    : ident T_COLON ident
      {
        s(:capture, [val[0], val[2]], :source_line => val[0].source_line)
      }
    ;

  # Rules

  branch
    : idents_or_epsilon
      {
        s(:branch, [val[0]], :source_line => val[0].source_line)
      }
    | idents_or_epsilon ruby
      {
        s(:branch, [val[0], val[1]], :source_line => val[0].source_line)
      }
    ;

  branches
    : branch                 { val }
    | branch T_PIPE branches { [val[0]] + val[2] }
    ;

  rule
    : ident T_EQUALS branches T_SEMICOLON
      {
        s(:rule, [val[0], *val[2]], :source_line => val[0].source_line)
      }
    ;

  # Operators

  operator
    : T_STAR     { :star }
    | T_PLUS     { :plus }
    | T_QUESTION { :question }
    ;

  # Ruby code blocks

  ruby
    : T_RUBY { s(:ruby, [val[0].value], :source_line => val[0].source_line) }
end

---- inner
  ##
  # @see [LL::Lexer#initialize]
  #
  def initialize(*args)
    @lexer = Lexer.new(*args)
  end

  ##
  # Yields the next token from the lexer.
  #
  # @yieldparam [Array]
  #
  def yield_next_token
    @lexer.advance do |token|
      yield [token.type, token]
    end

    yield [false, false]
  end

  ##
  # @see [LL::AST::Node#initialize]
  # @return [LL::AST::Node]
  #
  def s(*args)
    return AST::Node.new(*args)
  end

  ##
  # Parses the input and returns the corresponding AST.
  #
  # @return [LL::AST::Node]
  #
  def parse
    return yyparse(self, :yield_next_token)
  end

# vim: set ft=racc: