def doSomething(a,b)
    puts a+b
end

colors = ["blue", "green", "yellow", "red"]
doSomething(452,3451)
doSomething('bananas', ' are good for you!')
doSomething(colors[0],colors[3])

def doSomething2(a,b)
    return a+b
end
x = doSomething2(452,3451)
puts doSomething2('y', 's')
puts x*3
puts x/2
puts colors
puts "What other color do you want to add to the array?"
add = gets.chomp
colors.push(add)
puts colors

def doSomething3(a,b,c,d,e)
  return (a+b+c+d+e)/5
end
puts "\n\nWhat 5 numbers do you want an average of?"
q = gets.chomp.to_i
w = gets.chomp.to_i
r = gets.chomp.to_i
t = gets.chomp.to_i
y = gets.chomp.to_i
print "\nThe average is:"
puts doSomething3(q,w,r,t,y)

def ctof(a)
  return (a*9/5+32)
end
  puts "\n\nWhat is the temp in C?"
  b = gets.chomp.to_i.to_f
  puts "In F that is:"
  print ctof(b).round(2)

def ftoc(x)
  return ((x-32)*5/9)
end
  puts "\nWhat is the temp in F?"
  y = gets.chomp.to_i.to_f
  puts "In C, that is:"
  puts ftoc(y).round(2)

def euro(x)
  return (x*0.0181).round(2)
end
def rupiah(x)
  return (x*268.6135).round(2)
end
def sgd(x)
  return (x*0.279).round(2)
end

puts "\n\nHow many Philippine Pesos do you have?"
peso = gets.chomp.to_i.to_f
puts "You have #{euro(peso)} Euros."
puts "You have #{rupiah(peso)} Indonesian Rupiah."
puts "You have #{sgd(peso)} Singapore Dollars."

# MSRP
#car age, and how many years do you plan to own the car
# residual percentage - how much it has depreciated
#res% = years of car, mileage,
# low rate = Ford, Nissan, Honda, Chevy, Audi, Dodge, Jeep, Toyota
# high rate = Buick, Chrysler, Fiat, Jaguar, Lincoln, Benz, Volvo
# MSRP * res%
#first year depreciation
#total depreciation
