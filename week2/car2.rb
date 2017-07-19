def line
  puts '- - ' * 16
end

class CarList
  attr_accessor :make , :top_speed , :type , :strength
    def initialize (make , top_speed , type , strength)
      @make = make.to_s
      @top_speed = top_speed.round(2)
      @type = type.to_s
      @strength = strength.to_s
    end
    def cardetails
      puts "\n"
      line
      puts '- ' * 10 + '|     KART DETAILS     |'.upcase + ' -' * 10
      line
      puts "\nFocusing on the #{@make},"
      puts "\n\t it is a #{@type} with a speed of #{@top_speed}."
      puts "\n\t its strongest suit is that it is #{@strength}."
      line
    end
end

class DriverList
 attr_accessor :name, :car, :career, :alternate
   def initialize (name, car, career, alternate)
     @name = name
     @car = car
     @career = career
     @alternate = alternate
   end
   def driverdetails
     line
     puts '- ' * 10 + '|    DRIVER PROFILE    |'.upcase + ' -' * 10
     line
     puts "\nOne of the karts #{@name} drives is a #{@car}."
     puts "\n#{@name} has been driving the #{@car} since #{@career}."
     puts "\n#{@name} also uses the #{@alternate}."
   end
end

#driver profiles
mario = DriverList.new("Mario", "B Dasher", "Mario Kart DS (2005)", "Standard MR and the Shooting Star")
luigi = DriverList.new("Luigi", "Poltergust 4000", "Mario Kart DS (2005)", "Standard LG and the Streamliner")
peach = DriverList.new("Peach", "Royale", "Mario Kart DS (2005)", "Standard PC and the Light Tripper")
yoshi = DriverList.new("Yoshi", "Egg 1", "Mario Kart DS (2005)", "Standard YS and the Cucumber")
toad = DriverList.new("Toad", "4 Wheel Cradle", "Mario Kart DS (2005)", "Mushmellow and the Standard TD")
dk = DriverList.new("Donkey Kong", "Wildlife", "Mario Kart DS (2005)", "Rambi Rider and the Standard DK")
wario = DriverList.new("Wario", "Brute", "Mario Kart DS (2005)", "Standard WR and the Dragonfly")
bowser = DriverList.new("Bowser", "Standard BW", "Mario Kart DS (2005)", "Tyrant and the Standard BW")

#car profiles
bdash = CarList.new("B Dasher", 6.5, "Heavyweight Kart", "lucky with items")
poltergust = CarList.new("Poltergust 4000" , 7.5, "Lightweight Kart" , "great at snaking")
royale = CarList.new("Royale", 4.5, "Heavyweight Kart", "great at drifting, has fast acceleration")
egg = CarList.new("Egg 1",5.8, "Lightweight Kart", "great at snaking, but doesn't sacrifice its speed and acceleration")
cradle = CarList.new("4 Wheel Cradle", 3.3, "Heavyweight Kart",  "lucky with items, has good acceleration" )
wildlife = CarList.new("Wildlife", 8.3, "Lightweight Kart",  "one of the fastest in the game")
brute = CarList.new("Brute",  9.3, "Standard Kart" , "very very fast but everything else is below-average")
standardbw = CarList.new("Standard BW", 9.75, "Standard Kart", "one of the fastest in the game even thought it has weak acceleration")

system 'cls'

puts %q{
──────────────███████──███████
──────────████▓▓▓▓▓▓████░░░░░██           WHICH DRIVER'S PROFILE DO YOU WANT TO OPEN?
────────██▓▓▓▓▓▓▓▓▓▓▓▓██░░░░░░██
──────██▓▓▓▓▓▓████████████░░░░██             ------------          ------------
────██▓▓▓▓▓▓████████████████░██              |   MARIO  |          |   LUIGI  |
────██▓▓████░░░░░░░░░░░░██████               ------------          ------------
──████████░░░░░░██░░██░░██▓▓▓▓██
──██░░████░░░░░░██░░██░░██▓▓▓▓██             ------------          ------------
██░░░░██████░░░░░░░░░░░░░░██▓▓██             |  PEACH   |          |   YOSHI  |
██░░░░░░██░░░░██░░░░░░░░░░██▓▓██             ------------          ------------
──██░░░░░░░░░███████░░░░██████
────████░░░░░░░███████████▓▓██               ------------         --------------
──────██████░░░░░░░░░░██▓▓▓▓██               |   TOAD   |         | DONKEYKONG |
────██▓▓▓▓██████████████▓▓██                 ------------         --------------
──██▓▓▓▓▓▓▓▓████░░░░░░████
████▓▓▓▓▓▓▓▓██░░░░░░░░░░██                   ------------          ------------
████▓▓▓▓▓▓▓▓██░░░░░░░░░░██                   |  WARIO   |          |  BOWSER  |
██████▓▓▓▓▓▓▓▓██░░░░░░████████               ------------          ------------
──██████▓▓▓▓▓▓████████████████
────██████████████████████▓▓▓▓██
──██▓▓▓▓████████████████▓▓▓▓▓▓██
████▓▓██████████████████▓▓▓▓▓▓██
██▓▓▓▓██████████████████▓▓▓▓▓▓██
██▓▓▓▓██████████──────██▓▓▓▓████
██▓▓▓▓████──────────────██████
──████
}

print "\n"
driverchoice = gets.chomp.downcase

if driverchoice == 'mario'
  system 'cls'
  mario.driverdetails
  bdash.cardetails
end

if driverchoice == 'luigi'
  system 'cls'
  luigi.driverdetails
  bdash.cardetails
end

if driverchoice == 'peach'
  system 'cls'
  peach.driverdetails
  royale.cardetails
end

if driverchoice == 'yoshi'
  system 'cls'
  yoshi.driverdetails
  egg.cardetails
end

if driverchoice == 'toad'
  system 'cls'
  toad.driverdetails
  cradle.cardetails
end

if driverchoice == 'dk'
  system 'cls'
  dk.driverdetails
  wildlife.cardetails
end

if driverchoice == 'wario'
  system 'cls'
  wario.driverdetails
  brute.cardetails
end

if driverchoice == 'bowser'
  system 'cls'
  bowser.driverdetails
  standardbw.cardetails
end

if driverchoice == ''
  return error
end
