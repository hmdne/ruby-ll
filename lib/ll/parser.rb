# This file is automatically generated by ruby-ll. Manually changing this file
# is not recommended as any changes will be lost the next time this parser is
# re-generated.

module LL

class Parser < LL::Driver
  CONFIG = LL::DriverConfig.new

  CONFIG.terminals = [
    :$EOF, # 0
    :T_RUBY, # 1
    :T_NAME, # 2
    :T_TERMINALS, # 3
    :T_INNER, # 4
    :T_HEADER, # 5
    :T_IDENT, # 6
    :T_EQUALS, # 7
    :T_COLON, # 8
    :T_PIPE, # 9
    :T_EPSILON, # 10
    :T_SEMICOLON, # 11
  ].freeze

  CONFIG.rules = [
    [3, 0, 0, 1], # 0
    [3, 1, 2, 0], # 1
    [3, 2, 0, 1, 0, 2], # 2
    [3, 3, 2, 0], # 3
    [3, 4, 0, 3], # 4
    [3, 5, 0, 19], # 5
    [3, 6, 0, 4], # 6
    [3, 7, 0, 6], # 7
    [3, 8, 0, 7], # 8
    [3, 9, 0, 8], # 9
    [3, 10, 1, 11, 0, 5, 0, 11, 1, 2], # 10
    [3, 11, 0, 5, 0, 11, 1, 8, 1, 8], # 11
    [3, 12, 2, 0], # 12
    [3, 13, 1, 11, 0, 9, 1, 3], # 13
    [3, 14, 0, 16, 1, 4], # 14
    [3, 15, 0, 16, 1, 5], # 15
    [3, 16, 0, 10, 0, 11], # 16
    [3, 17, 0, 9], # 17
    [3, 18, 2, 0], # 18
    [3, 19, 1, 6], # 19
    [3, 20, 0, 9], # 20
    [3, 21, 0, 13], # 21
    [3, 22, 1, 10], # 22
    [3, 23, 0, 15, 0, 12], # 23
    [3, 24, 0, 16], # 24
    [3, 25, 2, 0], # 25
    [3, 26, 1, 1], # 26
    [3, 27, 0, 18, 0, 14], # 27
    [3, 28, 0, 17, 1, 9], # 28
    [3, 29, 2, 0], # 29
    [3, 30, 1, 11, 0, 17, 1, 7, 0, 11], # 30
  ].freeze

  CONFIG.table = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], # 0
    [3, 3, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3], # 1
    [-1, -1, 4, 4, 4, 4, 5, -1, -1, -1, -1, -1], # 2
    [-1, -1, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1], # 3
    [-1, -1, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 4
    [12, 12, 12, 12, 12, 12, 12, 12, 11, 12, 12, 12], # 5
    [-1, -1, -1, 13, -1, -1, -1, -1, -1, -1, -1, -1], # 6
    [-1, -1, -1, -1, 14, -1, -1, -1, -1, -1, -1, -1], # 7
    [-1, -1, -1, -1, -1, 15, -1, -1, -1, -1, -1, -1], # 8
    [-1, -1, -1, -1, -1, -1, 16, -1, -1, -1, -1, -1], # 9
    [18, 18, 18, 18, 18, 18, 17, 18, 18, 18, 18, 18], # 10
    [-1, -1, -1, -1, -1, -1, 19, -1, -1, -1, -1, -1], # 11
    [-1, -1, -1, -1, -1, -1, 20, -1, -1, -1, 21, -1], # 12
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1], # 13
    [-1, -1, -1, -1, -1, -1, 23, -1, -1, -1, 23, -1], # 14
    [25, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25], # 15
    [-1, 26, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], # 16
    [-1, -1, -1, -1, -1, -1, 27, -1, -1, -1, 27, -1], # 17
    [29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 29, 29], # 18
    [-1, -1, -1, -1, -1, -1, 30, -1, -1, -1, -1, -1], # 19
  ].freeze

  CONFIG.actions = [
    [:_rule_0, 1], # 0
    [:_rule_1, 0], # 1
    [:_rule_2, 2], # 2
    [:_rule_3, 0], # 3
    [:_rule_4, 1], # 4
    [:_rule_5, 1], # 5
    [:_rule_6, 1], # 6
    [:_rule_7, 1], # 7
    [:_rule_8, 1], # 8
    [:_rule_9, 1], # 9
    [:_rule_10, 4], # 10
    [:_rule_11, 4], # 11
    [:_rule_12, 0], # 12
    [:_rule_13, 3], # 13
    [:_rule_14, 2], # 14
    [:_rule_15, 2], # 15
    [:_rule_16, 2], # 16
    [:_rule_17, 1], # 17
    [:_rule_18, 0], # 18
    [:_rule_19, 1], # 19
    [:_rule_20, 1], # 20
    [:_rule_21, 1], # 21
    [:_rule_22, 1], # 22
    [:_rule_23, 2], # 23
    [:_rule_24, 1], # 24
    [:_rule_25, 0], # 25
    [:_rule_26, 1], # 26
    [:_rule_27, 2], # 27
    [:_rule_28, 2], # 28
    [:_rule_29, 0], # 29
    [:_rule_30, 4], # 30
  ].freeze
##
  # @see [LL::Lexer#initialize]
  #
  def initialize(*args)
    @lexer = Lexer.new(*args)
  end

  ##
  # @see [LL::Driver#stack_input_error]
  #
  def stack_input_error(stack_value, token)
    type = token[0].inspect
    sl   = token[1].source_line

    raise(
      ParserError,
      "Unexpected rule #{stack_value} for #{type} on line #{sl.line}, " \
        "column #{sl.column}"
    )
  end

  ##
  # @yieldparam [Symbol] type
  # @yieldparam [String] value
  #
  def each_token
    @lexer.advance do |token|
      yield [token.type, token]
    end

    yield [-1, -1]
  end

  ##
  # @see [LL::AST::Node#initialize]
  #
  def s(*args)
    return AST::Node.new(*args)
  end

  def _rule_0(val)
     s(:grammar, val[0]) 
  end

  def _rule_1(val)
     s(:grammar) 
  end

  def _rule_2(val)
     val[0] + val[1] 
  end

  def _rule_3(val)
    val
  end

  def _rule_4(val)
    val
  end

  def _rule_5(val)
    val
  end

  def _rule_6(val)
     val[0] 
  end

  def _rule_7(val)
     val[0] 
  end

  def _rule_8(val)
     val[0] 
  end

  def _rule_9(val)
     val[0] 
  end

  def _rule_10(val)
    
      s(:name, [val[1], *val[2]], :source_line => val[0].source_line)
    
  end

  def _rule_11(val)
     [val[2]] + val[3] 
  end

  def _rule_12(val)
    val
  end

  def _rule_13(val)
    
      s(:terminals, val[1], :source_line => val[0].source_line)
    
  end

  def _rule_14(val)
    
      s(:inner, [val[1]], :source_line => val[0].source_line)
    
  end

  def _rule_15(val)
    
      s(:header, [val[1]], :source_line => val[0].source_line)
    
  end

  def _rule_16(val)
     [val[0]] + val[1] 
  end

  def _rule_17(val)
     val[0] 
  end

  def _rule_18(val)
    val
  end

  def _rule_19(val)
    
      s(:ident, [val[0].value], :source_line => val[0].source_line)
    
  end

  def _rule_20(val)
    
      s(:steps, val[0], :source_line => val[0][0].source_line)
    
  end

  def _rule_21(val)
    
      s(:steps, [val[0]], :source_line => val[0].source_line)
    
  end

  def _rule_22(val)
     s(:epsilon, [], :source_line => val[0].source_line) 
  end

  def _rule_23(val)
    
      steps = [val[0]]

      steps << val[1] if val[1]

      s(:branch, steps, :source_line => val[0].source_line)
    
  end

  def _rule_24(val)
     val[0] 
  end

  def _rule_25(val)
     nil 
  end

  def _rule_26(val)
     s(:ruby, [val[0].value], :source_line => val[0].source_line) 
  end

  def _rule_27(val)
     [val[0]] + val[1] 
  end

  def _rule_28(val)
     val[1] 
  end

  def _rule_29(val)
    val
  end

  def _rule_30(val)
    
      s(:rule, [val[0], *val[2]], :source_line => val[0].source_line)
    
  end
end
end
