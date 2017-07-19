indieA = [
  {code: "i1", item: "Cerbera", price: 300},
  {code: "i2", item: "Ipil", price: 300},
  {code: "i3", item: "Ardisia", price: 300},
  {code: "i4", item: "Kamagong", price: 300},
              ]

ornaA = [
  {code: "o1", item: "Birds of Paradise", price: 300},
  {code: "o2", item: "Kamuning", price: 300},
  {code: "o3", item: "Ficus", price: 300},
  {code: "o4", item: "Calachuchi", price: 300},
  {code: "o5", item: "Indian Tree", price: 300},
  {code: "o6", item: "Adelfa", price: 300},
          ]

bambooA = [
  {code: "b1", item: "Chinese Bamboo", price: 500},
  {code: "b2", item: "Black Bamboo", price: 400},
  {code: "b3", item: "Buddha Bamboo", price: 600},
          ]

palmA = [
  {code: "p1", item: "Palmera", price: 500},
  {code: "p2", item: "Licuala", price: 400},
  {code: "p3", item: "Bunga de China", price: 600},
        ]

def intro
  puts "Welcome to Greeny Green, your local plant nursery! \nI'll be helping you with your purchases today. \nMay I know what your name is?"
  name = gets.chomp
  puts "Alrighty, #{name.capitalize}. Let's begin."
end

def section_choose

  $sectionA = [
    {loc: "north", area: "Indigenous Plants"},
    {loc: "south", area: "Ornamental Plants"},
    {loc: "east", area: "Bamboo"},
    {loc: "west", area: "Palm"},
              ]

puts "Which section of the nursery shall we go to?"
puts %q{
---- GREENY GREEN PLANT NURSERY ----
North: Indigenous Plants
South: Ornamental Plants
East: Bamboo
West: Palms
}
    choice = gets.chomp
    choice.downcase
    sectionA.each do |where|
      if choice == where[:loc]
         puts where[:area]
      end
      end
end


  intro
  section_choose
