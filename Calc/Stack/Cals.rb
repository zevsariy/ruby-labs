require_relative "Compf"

class Calc < Compf
  def initialize
    super
    @s = Stack.new
  end

   def compile(str)
     super
     return @s.top
   end

   def getRez
     return @s
   end

   protected

   def symOther(c)
     raise "Недопустимый символ #{c}" if c !~ /[0-9]/
     SYM_OTHER
   end

   def nextOper(c)
     second, first = @s.pop, @s.pop
     @s.push(first.method(c).call(second))
   end

  def nextOther(c)
    @s.push(c.to_i)
  end
end

c = Calc.new
c.compile("9+7")
puts c.getRez
