#atm
#accountholder arrays,
# class - Intro, Transactions, enroll a new account

class Account
  def initialize(person, pin, money)
    @person = person.to_s
    @pin = pin.to_i
    @money = money.to_i
  end
  account1 = Account.new('Aren', 123456, 10000)
  account2 = Account.new('Clarence', 555555, 8500)
  account3 = Account.new('JC', 000000, 5000000)
end



def chooseprocess
  puts "What do you want to do?".upcase
  puts "\n1) CHECK BALANCE\n2) WITHDRAW\n3) DEPOSIT\n4) NEW ACCOUNT\n5) QUIT"
  print "\nPlease enter the code here:  ".upcase
  $getnum = gets.chomp.to_i
  if $getnum == 1
    checkbalanceprocess
    asktostay
  end
  if $getnum == 2
    withdrawprocess
    asktostay
  end
  if $getnum == 3
    depositprocess
    asktostay
  end
  if $getnum == 4
    newaccountprocess
    asktostay
  end
end

def withdrawprocess
  print "Please input your PIN: "
  xpin = gets.chomp.to_i
  if xpin == 000000
    puts "You currently have #{money} in your account.\nHow much do you want to withdraw?"
    withdraw = gets.chomp.to_i
  endmoney = money - withdraw
  puts "You now have #{endmoney}."
end
end

def depositprocess
end

def asktostay
  puts "Are you leaving?"
end

def newaccountprocess
puts "Please input your name below:"
xname = gets.chomp.to_s.capitalize
puts "Please input your PIN below:"
xpin = gets.chomp.to_i
puts "How much are you depositing into the account?"
xmoney = gets.chomp.to_i
puts "Welcome to the bank, #{xname.capitalize}. Your pin is set to #{xpin}. You account currently have #{xmoney}."
newaccount = Account.new(xname, xpin, xmoney)
puts newaccount
end


chooseprocess
