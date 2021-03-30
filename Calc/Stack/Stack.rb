class Stack
   def initialize
     @array = Array.new
   end
   def push(c)
     @array.push(c)
   end
   def pop
     @array.pop
   end
   def top
     @array.last
   end
end
