puts "Welcome to Good Burger, home of the good burger!"
puts "If you're a regular here, I'm sorry to say that Michael isn't working with us anymore."
puts "I'm J, I'm new and I'll be helping you order today. May I know what your name is?"
name = gets.chomp
puts "Alrighty, #{name.capitalize}. What do you wanna order?"
puts "-- Burgers P120.00
-- Fries P60.00
-- Pasta P150.00
-- Pizza P200.00
-- Desserts P95.00
-- Drinks P60.00"
total = 0
supertotal = 0
qtytotal = 0
order = gets.chomp
order.downcase
supertotal += total.to_i
price = "120" if order == "burger"
price = "60" if order == "fries"
price = "150" if order == "pasta"
price = "200" if order == "pizza"
price = "95" if order == "desserts"
price = "60" if order == "drinks"
puts "And how many of those?"
qty = gets.chomp
total = qty.to_i * price.to_i
supertotal += total.to_i
qtytotal += qty.to_i
puts "Alrighty, that's #{qty} orders of #{order}. Anything else? Y/N"
wantmore = gets.chomp
wantmore.downcase
while wantmore == "y" do
puts "What else?"
puts "-- Burgers P120.00
-- Fries P60.00
-- Pasta P150.00
-- Pizza P200.00
-- Desserts P95.00
-- Drinks P60.00"
order = gets.chomp
order.downcase
price = "120" if order == "burger"
price = "60" if order == "fries"
price = "150" if order == "pasta"
price = "200" if order == "pizza"
price = "95" if order == "desserts"
price = "60" if order == "drinks"
total = price.to_i * qty.to_i
supertotal += total.to_i
wantmore = "N"
  puts "And how many of those?"
  qty = gets.chomp
  puts "Alrighty, that's #{qty} orders of #{order}. Anything else? Y/N"
  wantmore = gets.chomp
end
qtytotal += qty.to_i
if wantmore == "N"
puts "Okay, so your total is #{supertotal}. Please proceed to K to pay."
end
puts "..."
puts "Hello, I'm K. You have a total of #{qtytotal} items. Your total is #{supertotal}."
puts "Will you be paying with cash or by card?"
puts "-- Cash
-- Card"
payment = gets.chomp
payment.downcase
if payment == "cash"
puts "Great. How much money do you have?"
money = gets.chomp
change = money.to_i - supertotal.to_i
puts "Here is the receipt and your change, #{change}"
else
puts "Okay, is that VISA or Mastercard?"
puts "-- VISA
-- Mastercard"
card = gets.chomp
card.downcase
puts "Great. Sign here please."
puts "..."
puts "Here's your card and the receipt."
end
puts "That's all, have a great day!"
