$wannastay = 'y'
$accountholders = [
      {pin: 123456, person: 'Aren', money: 10000},
      {pin: 555555, person: 'Clarence', money: 1000000},
      {pin: 000000, person: 'Clang', money: 50000000},
                      ]

$choose_action = [
      {code: 1, action: "Check Balance"},
      {code: 2, action: "Withdraw"},
      {code: 3, action: "Deposit"},
      {code: 4, action: "Quit"},
          ]

def choose_screen
puts "\nWhat do you want to do today?".upcase
puts "\n1) CHECK BALANCE\n2) WITHDRAW\n3) DEPOSIT\n4) QUIT"
print "\nPlease enter the code here:  ".upcase
$getnum = gets.chomp.to_i
$choose_action.each do |action_check|
    if $getnum == action_check[:code]
    puts "\nYou have chosen to #{action_check[:action]}."
    end
end
end

def check_balance
  print "Please enter your pin to move forward:  "
  $pin_enter = gets.chomp.to_i
  $accountholders.each do |user_check|
  if $pin_enter == user_check[:pin]
  puts "\nHello, #{user_check[:person]}.\nOur records show that you have #{user_check[:money]} in your account."
  end
end
end

def withdraw
  print "Please enter your pin to move forward:  "
  $pin_enter = gets.chomp.to_i
  $accountholders.each do |user_check|
  if $pin_enter == user_check[:pin]
    puts "\nHello, #{user_check[:person]}.\nOur records show that you have #{user_check[:money]} in this account. \nHow much will you withdraw?"
    takemoney = gets.chomp.to_i
    user_check[:money] = user_check[:money].to_i - takemoney
    puts "\nNow you have #{user_check[:money]} in your account."
  end
  end
end

def deposit
  print "\nPlease enter your pin to move forward: "
  $pin_enter = gets.chomp.to_i
  $accountholders.each do |user_check|
  if $pin_enter == user_check[:pin]
    puts "\nHello, #{user_check[:person]}.\nOur records show that you have #{user_check[:money]} in your account. \nHow much will you deposit?"
    putmoney = gets.chomp.to_i
    user_check[:money] = user_check[:money].to_i + putmoney
    puts "\nNow you have #{user_check[:money]} in your account."
  end
end
end

def stay
    puts "\nDo you have any other transactions? y/n"
    $wannastay = gets.chomp.downcase
    if $wannastay == 'n'
    puts "Thank you for banking with us. Have a good day!"
    exit
    end
end

def programstart
while $wannastay == 'y'
choose_screen
if $getnum == 1
  check_balance
  stay
end
if $getnum == 2
  withdraw
  stay
end
if $getnum == 3
  deposit
  stay
end
if $getnum == 4
  $wannastay == 'y'
  puts "Thank you for banking with us. Have a good day!"
  exit
end
end
end

programstart
