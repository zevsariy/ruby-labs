require_relative "RecursCompf"
c = RecursComp.new
print "\nВведите формулу -> "
tst = "5+5+(5-6)"
c.compile(tst)
