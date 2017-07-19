class AccountHolder

  attr_accessor :name, :pin, :balance, :address, :email, :contact_details

  def initialize (name, pin, balance, address, email, contact_details)
    @name = name.to_s.capitalize
    @pin = pin.to_i
    @balance = balance.to_i
    @address = address.to_s
    @email = email.to_s
    @contact_details = contact_details.to_i
  end

  def show_account
    puts "\n\n"
    puts "Welcome to the family, #{@name}.".concat('* * ' * 3).prepend('* * ' * 3)
    puts "\nBelow are your account details:".upcase
    puts "Your PIN is #{@pin}."
    puts "Your current balance is #{@balance} pesos."
    puts "Your current address is #{@address}."
    puts "Your contact details are \n\temail: #{@email} \n\tphone number: #{@contact_details}"
  end
end

#create an 'empty' account
newaccount = AccountHolder.new(1,2,3,4,5,6)
#newaccount.show_account -- to test if the account is showing up right

#open new account
puts "\nPlease enter your name to create a new account:".upcase
xname = gets.chomp.capitalize
newaccount.name = xname
name = newaccount.name
puts '= = = = ' * 4

puts "\nPlease enter your PIN".upcase
xpin = gets.chomp
newaccount.pin = xpin
pin = newaccount.pin

puts "\nHow much will you put in this account?".upcase
xbalance = gets.chomp.to_i
newaccount.balance = xbalance
balance = newaccount.balance

puts "\nPlease enter your address".upcase
xaddress = gets.chomp
newaccount.address = xaddress
address = newaccount.address

puts "\nPlease enter your email address".upcase
xemail = gets.chomp
newaccount.email = xemail
email = newaccount.email

puts "\nPlease enter your phone number".upcase
xcontact_details = gets.chomp
newaccount.contact_details = xcontact_details
contact_details = newaccount.contact_details

newaccount.show_account #to check if all the details have been set properly
