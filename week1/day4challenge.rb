$again = 'y'
$votersarray = []
$candies = [
      {code: 1, candidate: "Mika", votes: 0},
      {code: 2, candidate: "Reggie", votes: 0},
      {code: 3, candidate: "Kenneth", votes: 0},
      {code: 4, candidate: "Trev", votes: 0},
      {code: 5, candidate: "Abstain", votes: 0}
          ]

def intro
  puts "# # # " * 15
  puts "The new country of Vivixx has decided to hold an election! \nWe will be choosing our first ever president."
  puts 'HERE ARE THE PRESIDENTIAL CANDIDATES'
  puts "\n"
  puts '1) MIKA "Land of the Rising Sun" IIJIMA'
  puts '2) REGGIE "Honest Taxi Driver" CABUTOTAN'
  puts '3) KENNETH "...idk what to put" LIM'
  puts '4) TREV "My Shirts Are Too Tight" CRUZ'
  puts '5) ABSTAIN'
  puts "\n"
end

def voters_who
  puts "Before you choose a deserving candidate, may I know what your name is?"
  votersname = gets.chomp
  $votersarray.push votersname.capitalize
# puts $votersarray -- to check if they are coming out right
  puts "\nAlrighty, #{votersname.capitalize}, please choose a candidate. \nInput their number below.\n"
end

def vote
choice = gets.chomp.to_i
$candies.each do |vote_check|
  if choice == vote_check[:code]
    vote_check[:votes] = vote_check[:votes].to_i + 1
  puts "\nYou have voted for #{vote_check[:candidate]}. \nThere are currently #{vote_check[:votes]} vote(s) for him/her."
end
end
end

#def winner_announce
#I couldn't figure out how to make it show up....
#I had something to sort the array accdg to the highest values, but I changed it and then forgot it... Oh well.
#end

def breakdown
puts "Here is the breakdown of votes: \n"
$candies.each do |vote_breakdown|
  puts "#{vote_breakdown[:candidate]} has #{vote_breakdown[:votes]} votes."
end
end

def voters_show
  numberofvoters = $votersarray.length
  puts "\nA total of #{numberofvoters} people have voted."
  puts "\nThese are the people who have voted: \n"
  puts $votersarray.sort
  puts "\nThank you all for voting!"
end

def dothething
while $again == 'y' do
          intro
          voters_who
          vote
          puts "\nWill another person be voting? y/n\n"
          $again = gets.chomp.downcase
    end
#winner_announce --- I'll figure it out eventually HAHAHA
breakdown
voters_show
end

dothething
