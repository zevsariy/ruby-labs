class RecursComp
   def compile(str)
     @str,@index = str,0
     compileF
   end

     private

   def compileF
     compileT
     return if @index >= @str.length
     cur = @str[@index].chr
     if cur == '+' or cur == '-'
       @index += 1
       compileF
       print "#{cur} "
     end
   end
   def compileT
     compileM
     return if @index >= @str.length
     cur = @str[@index].chr
     if cur == '*' or cur == '/'
       @index += 1
       compileT
       print "#{cur} "
     end
   end
   def compileM
     if @str[@index].chr == '('
       @index += 1
       compileF
       @index += 1
     else
       compileV
     end
   end
   def compileV
     print "#{@str[@index].chr} "
     @index += 1
   end
 end
