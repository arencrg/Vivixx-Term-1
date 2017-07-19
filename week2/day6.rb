class Classmate
  def initialize(name,gender,grade)
    @name = name.to_s
    @gender = gender.to_s
    @grade = grade.to_i
  end

  def about
    puts "#{@name} is a #{@gender}."
    if @gender == 'Female'
      puts "Her grade is #{@grade}."
    end
    if @gender == 'Male'
      puts "His grade is #{@grade}."
    end
  end

end

classmate1 = Classmate.new('William', 'Male', 80)
classmate2 = Classmate.new('Grail', 'Female', 90)
classmate1.about
classmate2.about

puts "\n"
puts '* * * * ' * 5
puts "\n"

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

dog1 = GoodDog.new('Doge')
puts dog1.speak

puts "Another dog?"
xnew = gets.chomp.to_s.capitalize
dog2 = GoodDog.new(xnew)
puts dog2.speak

puts "\n"
puts '* * * * ' * 5
puts "\n"

class Customer
  def initialize(details)
  @details = details
  end
  def print_customer_details
    puts "Customer details:"
    puts "Name: #{@details['name']}"
    puts "Age: #{@details['age']}"
  end
end

aren = Customer.new({'name' => "Aren", 'age' => 21 })
bren = Customer.new({'name' => "Bren", 'age' => 24 })
aren.print_customer_details
bren.print_customer_details

puts "\n"
puts '* * * * ' * 5
puts "\n"

class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def showrect
    puts "The length is #{@length}, the breadth is #{@breadth}"
  end
#Getter - to display a variable / read
  def length
    @length
  end
  def breadth
    @breadth
  end
#Setter - to change a variable / write
  def length=(length)
    @length = length
  end
  def breadth=(breadth)
    @breadth = breadth
  end
end
#Instance
rect = Rectangle.new(10,20)
rect.showrect
rect.length = 20
rect.breadth = 30
x = rect.length
y = rect.breadth
rect.showrect

puts "\n"
puts '* * * * ' * 5
puts "\n"


class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def get_age
    @age
  end
end

john = Person.new("John", 42)
age = john.get_age
puts "John's age is #{age}."
puts "\n"
puts '* * * * ' * 5
puts "\n"

# just for displaying, use attr_reader
#for writing, use attr_writer
#attr_accessor does both

class Rectangle
  attr_accessor :length, :breadth
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def showrect
    puts "The length is #{@length}, the breadth is #{@breadth}"
  end
end
#Instance
rect = Rectangle.new(10,20)
rect.showrect

rect.length = 50
rect.breadth = 80
length = rect.length
breadth = rect.breadth
rect.showrect

puts "\n"
puts '* * * * ' * 5
puts "\n"

puts "New L?"
xxlength = gets.chomp
rect.length = xxlength
length = rect.length
puts "New B?"
xxbreadth = gets.chomp
rect.breadth = xxbreadth
breadth = rect.breadth

rect.showrect

puts "\n"
puts '* * * * ' * 5
puts "\n"
