class InvalidNameError < StandardError
end

def checkclassmate(classmate)
  classmate = classmate.strip
  raise InvalidNameError, "#{classmate} isn't a classmate.... Try again." if classmate.empty?
  classmate
end

begin
  checkclassmate('Aren')
  checkclassmate(' ')
rescue InvalidNameError => e
  puts e.message
end

def askyaclassmates
puts "Do you know who your classmates are? Name one ngaaa."
print '> '
classmate = gets.chomp
checkclassmate(classmate)

rescue InvalidNameError => e
  puts "Maaaan, you don't even know...."
  retry
end

askyaclassmates
