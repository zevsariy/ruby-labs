class Bird
  attr_accessor :type, :name
  def initialize(name)
    @name = name
    @type = "BIRD"
  end
  def SayName
    puts @name
  end
  def SayType
    puts @type
  end
end

class Aist < Bird
  attr_accessor :hasAKids
  def initialize(name, hasKids = true)
    @type = type
    @name = name
    @hasKids = hasKids
    @type = "AIST"
  end
  def SayName
    puts @name
  end
  def HasKids
    if @hasKids
      puts "I have a human-child"
    else
      puts "I have no human-child"
    end
  end
end

staya1 = Array.new
birdsNames = ["Antoshka", "Egorka", "Poleno", "Sviten"]

for index in 0...birdsNames.length
  if birdsNames[index] == "Poleno"
    staya1[index] = Aist.new(birdsNames[index])
  else
    staya1[index] = Bird.new(birdsNames[index])
  end
end
puts
for bindex in 0...staya1.length
  print " \\---#{staya1[bindex].type}(#{staya1[bindex].name})---/ "
end

staya2 = Array.new
birdsNames = ["Gena", "Pahom", "Ignat", "Sveta", "Teta"]

for index in 0...birdsNames.length
  if birdsNames[index] == "Poleno"
    staya2[index] = Aist.new(birdsNames[index])
  else
    staya2[index] = Bird.new(birdsNames[index])
  end
end
puts
for bindex in 0...staya2.length
  print " \\---#{staya2[bindex].type}(#{staya2[bindex].name})---/ "
end
