puts "how u doin, sweet thang?"

def lovelife(babe)
  puts "i luv u #{babe}"
end

lovelife"bren"
lovelife "chocolate"
lovelife "Kingdom Plantae"
lovelife "but do u even lift bro?"

def wtfmath (math)
  puts "#{math} is a small number,
  but when you multiply it by 123, it become huuuge,
  like, did you know that #{math} times 123 is #{math *123}"
end

wtfmath(2)
wtfmath(3)
wtfmath(4)
wtfmath(5)

puts "Is Baguio hot or cold?"
temperature = 25
if temperature > 25
  puts "It's hot"
else
  puts "It's cold"
end


counter = 0
while counter <= 20 do
  puts counter
  counter += 2
end

15.times do |counter|
  puts counter += 2
end

for year in 1995..2017
  puts year
end

for year in 1995..2017
  puts year if year % 2 == 0
end
