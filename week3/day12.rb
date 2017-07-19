class Cat
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

cats = [
  Cat.new('Kuting', :black),
  Cat.new('Miming', :white),
  Cat.new('Kitty', :fawn),
  Cat.new('Angery', :black),
  Cat.new('Lei', :white),
  Cat.new('Orange', :orange),
  Cat.new('Mix', :orange),
  Cat.new('Felix', :black)
]

white_cats = cats.select do |cat|
  cat.color == :white
end
puts "White Cats"
for x in 1..white_cats.length
  puts "#{white_cats[x-1].name}"
end

puts "\nBlack Cats"
black_cats = cats.select{ |cat| cat.color == :black}
for x in 1..black_cats.length
  puts "#{black_cats[x-1].name}"
end

puts "\nUnique Cat Colors"
all_cat_colors = cats.map{ |cat| cat.color }
unique_cat_colors = all_cat_colors.uniq
for x in 1..unique_cat_colors.length
  puts "#{unique_cat_colors[x-1]}"
end

puts "\nAll the cat names!!! I'm shouting!!!!!!"
all_cat_names = cats.map{ |cat| cat.name.upcase}
for x in 1..all_cat_names.length
  puts "#{all_cat_names[x-1]}"
end
