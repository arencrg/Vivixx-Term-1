def pass_options(options)
  first = options[:first]
  second = options[:second]
  third = options[:third]
  fourth = options[:fourth]
  fifth = options[:fifth]
  puts "I wanna eat #{first} and #{second} in milk."
end

pass_options({first:'bananas', second: 'mangoes'})

puts maththing = "math is so freakin hard, how do u even get the sqrt of 123190?? bet ya didn't know it's #{Math.sqrt(123190)} huh?"

puts '34134'.to_i
puts  '15824.3124'.to_i
puts  '12324.3124'.to_f
puts  '99 red balloons'.to_i
puts  '122354.4257234'.to_f

tele = 'tinky winky, laa laa, dipsy, po'
puts tele.split(', ').map(&:capitalize).join(" and ")

#guitars = 'Stratocaster', 'Telecaster', 'Jazzmaster', 'Jaguar', 'Les Paul', 'Fender', 'Squier', 'Riverhead', 'Tokai', 'SX',

word = gets
puts word + "das wassup" #next line
word2 = gets.chomp
puts word2 + " das wassup" #same line

puts '**' * 74
puts 'PAGLINGKURAN ANG SAMBAYANAN'.center(149, '~')
puts 'VIVA LA REVOLUCION'.prepend(' ').concat(' ').center(149, "~ <3 ")
puts '**' * 74

puts "\n"
puts '<3'*25
puts 'AREN'.prepend('*~* ').concat(' *~*').center(50,'.=.')
puts '<3'*25
puts "\n"
puts %q{
  __    ___   ____      _     ___   _         ____   __   _____  _   _      __       _____  _     ___   ___
 / /\  | |_) | |_      \ \_/ / / \ | | |     | |_   / /\   | |  | | | |\ | / /`_      | |  | |_| / / \ '_)_)
/_/--\ |_| \ |_|__      |_|  \_\_/ \_\_/     |_|__ /_/--\  |_|  |_| |_| \| \_\_/      |_|  |_| | \_\_/ (_)
}


guitars = Array.new

puts "What kind of guitar do you have?"
4.times do
  gas = gets.chomp
  guitars.push gas
end

puts guitars.sort.map(&:capitalize).join(" and ")
