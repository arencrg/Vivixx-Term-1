colors = ['red', 'blue', 'green', 'yellow', 'orange', 'pink', 'purple', 'maroon', 'fuschia', 'gray', 'black', 'white']
number_colors = colors.length
puts "There are #{number_colors} colors in this array."
last_color = colors[number_colors - 1]
puts "The last color in the array is #{last_color}"
first = colors[0]
fifth = colors[4]
tenth = colors[9]
puts "The first color is #{first}, the fifth color is #{fifth}, and the tenth color is #{tenth}"

puts "-------------"

numbers = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26]
addTwo = numbers[0]+numbers[9]
getMin = numbers.min
reverse = numbers.reverse
puts "The sum of the first number and the tenth number is #{addTwo}"
puts "The lowest number in the array is #{getMin}"
puts "One of the numbers is #{numbers.sample}"
puts "The numbers reversed shows up as #{reverse}"

puts "-------------"

arrayofstufftoprotest = ['STS', 'Contractualization', 'Militarization', 'Martial Law', 'Imperialism', 'Bureaucrat-Capitalism', 'Neoliberalism', 'Fascist Regimes', 'Sexism and Misogyny']
puts "What are we fighting against?"
gets.chomp
puts  "Labanan ang #{arrayofstufftoprotest.sample}"

puts "-------------"

daysIt = ['lunedi', 'martedi', 'mercoledi', 'giovedi', 'venerdi', 'sabato', 'domenica']
daysDe = ['montag', 'diesntag', 'mittwoch', 'donnerstag', 'freitag', 'samstag', 'sonntag']
monIt = daysIt[0]
monDe = daysDe[0]
friIt = daysIt[4]
friDe = daysDe[4]
puts "The days in Italian are #{daysIt}"
puts "The days in German are #{daysDe}"
puts "The worst day is always Monday, which in Italian is #{monIt} and in German is #{monDe}."
puts "TGIF! Or in Italian, GDL or grazie Dio per #{friIt}, and in German DSGF or danke schon gott fur #{friDe}."

puts "----------"
