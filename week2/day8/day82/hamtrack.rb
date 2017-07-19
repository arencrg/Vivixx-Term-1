$hamdisk1Arr = ["Alexander Hamilton", "Aaron Burr, Sir", "My Shot" ,
   "The Story of Tonight", "The Schuyler Sisters", "Farmer Refuted",
    "You'll Be Back", "Right Hand Man", "A Winter's Ball", "Helpless",
    "Satisfied", "The Story of Tonight (Reprise)", "Wait for It",
    "Stay Alive", "Ten Duel Commandments", "Meet Me Inside",
    "That Would Be Enough", "Guns and Ships", "History Has Its Eyes On You",
    "Yorktown (The World Turned Upside Down)", "What Comes Next?",
    "Dear Theodosia", "Non-Stop"]

$hamdisk2Arr = ["What'd I Miss?", "Cabinet Battle #1", "Take a Break",
  	"Say No to This", "The Room Where It Happens", "Schuyler Defeated",
    "Cabinet Battle #2", "Washington On Your Side",	"One Last Time",
    "I Know Him", "The Adams Administration", "We Know", "Hurricane",
    "The Reynolds Pamphlet", "Burn", "Blow Us All Away", "Stay Alive (Reprise)",
    "It's Quiet Uptown", "The Election of 1800", "Your Obedient Servant",
    "Best of Wives and Best of Women", "The World Was Wide Enough",
    "Who Lives, Who Dies, Who Tells Your Story" ]


def line
  puts '- . - . ' * 10
end

def banner
  puts "Hamilton the Musical".prepend(' ').concat(' ').center(50, '* = * = ').upcase
end

def showtracklist1
  x = 0
  y = 1
  while x < $hamdisk1Arr.length
    puts "Track #{y}: #{$hamdisk1Arr[x]}"
    line
    x += 1
    y += 1
  end
  line
  welcomeagain
end

def showtracklist2
  a = 0
  b = 1
  while a < $hamdisk2Arr.length
    puts "Track #{b}: #{$hamdisk2Arr[a]}"
    line
    a += 1
    b += 1
  end
  line
  welcomeagain
end

def welcome
  system 'cls'
  banner
  puts "Which disk do you want to open?".upcase
  puts "\nDisk 1\nDisk 2"
  puts "\n"
  choice = gets.chomp.downcase.strip
  if choice == '1'
    showtracklist1
  elsif choice == '2'
    showtracklist2
  else
    welcomeagain
  end
end

def welcomeagain
  p "Do you wanna start over?"
  startover = gets.chomp.strip.downcase
  if startover == 'y'
    welcome
  else
    exit
  end
end

#banner
#welcome
