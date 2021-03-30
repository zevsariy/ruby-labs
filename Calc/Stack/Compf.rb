require_relative "Stack"
class Compf < Stack
  def compile(str)
    "(#{str})".each_byte { |c| processSymbol(c.chr) }
  end

  private
  def symType(c)
    case c
    when '('
        SYM_LEFT
      when ')'
        SYM_RIGHT
      when '+', '-', '*', '/'
        SYM_OPER
      else
      symOther(c)
    end
  end

  def processSymbol(c)
    case symType(c)
      when SYM_LEFT
        push(c)
      when SYM_RIGHT
        processSuspendedSymbol(c)
        pop
      when SYM_OPER
        processSuspendedSymbol(c)
        push(c)
      when SYM_OTHER
        nextOther(c)
    end
  end

  def processSuspendedSymbol(c)
     while precedes(top, c)
       nextOper(pop)
     end
  end


  def priority(c)
    (c == '+' or c == '-') ? 1 : 2
  end

  def precedes(a, b)
    return false if symType(a) == SYM_LEFT
    return true if symType(b) == SYM_RIGHT
    priority(a) >= priority(b)
  end
  protected

  SYM_LEFT = 0; SYM_RIGHT = 1; SYM_OPER = 2; SYM_OTHER = 3

  def symOther(c)
    raise "Недопустимый символ #{c}" if c !~ /[a-z]/
    SYM_OTHER
  end

  def nextOper(c)
    print "#{c} "
  end

  def nextOther(c)
    nextOper(c)
  end
end
