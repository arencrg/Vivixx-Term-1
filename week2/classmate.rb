class Classmate
  def initialize(name,gender,grade)
    @name = name.to_s
    @gender = gender.to_s
    @grade = grade.to_i
  end

  def about
    puts '+'*20
    puts "#{@name} is #{@gender}."
    if @gender == 'Female'
      puts "Her grade is #{@grade}"
    end
    if @gender == 'Male'
      puts "His grade is #{@grade}"
    end
    puts '+'*20
  end

#getter
def name
  return @name
end

  def gender
    return @gender
  end
  def grade
    return @grade
  end

#setter
  def grade=(grade)
    @grade = grade
  end
  def gender=(gender)
    @gender = gender
  end

end

system "cls"
classmate1 = Classmate.new('William','Male',90)
classmate2 = Classmate.new('Grail','Female',70)

puts "What's your new classmate's name?"
xname = gets.chomp
puts "Gender?"
xgender = gets.chomp
puts "Grade?"
xgrade = gets.chomp
classmate3 = Classmate.new(xname,xgender,xgrade)



classmate1.about
classmate1.grade = 10
classmate1.about

classmate2.about

classmate3.about
classmate4 = classmate3.clone
classmate4.grade = 0
if classmate4.gender == 'Male'
  classmate4.gender = 'Female'
else
  classmate4.gender == 'Female'
  classmate4.gender = 'Male'
end
classmate4.about
puts Classmate.get_count
