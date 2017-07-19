def banner
  puts "Welcome to Nelly's Bespoke Cakes!"
#some sort of ascii art I guess?
end
#
def newrecord
  puts "Before we begin, may I ask what your name is so we can create a new record for you?"
  $name = gets.chomp
  $opened_file = File.new($name + '_record.txt', 'a+')
  $opened_file.write("\n")
  $opened_file.write($name.capitalize)
#  opened_file.rewind
  puts "Alrighty, let's begin!"
end
#
def showShape
  $cakeShape = [{code: 1, shape: "Rectangle"},
                {code: 2, shape: "Round"},
                {code: 3, shape: "Custom"}
                ]
  puts "\nPlease choose your cake shape:"
  puts "\n"
    for x in 1..$cakeShape .length
      puts "#{x}. #{$cakeShape [x-1][:shape]}"
    end
    puts "\n"
    shapechoice = gets.chomp
    case shapechoice
    when '1'
      printshape = "Rectangle"
    when '2'
      printshape = "Round"
    when '3'
      printshape = "Custom shape, confirm with the customer."
    else
      puts "Oops, wrong code!"
end
    $opened_file.write("\n")
    $opened_file.write(printshape)
end
#
def showBase
  $cakeBase = [ {code: 1, base: "Sponge Cake", price: 800},
                {code: 2, base: "Chiffon", price: 1200},
                {code: 3, base: "Cheesecake", price: 1500},
                {code: 4, base: "Carrot Cake", price: 800},
                {code: 5, base: "Mousse Cake", price: 900},
                {code: 6, base: "Red Velvet Cake", price: 1200},
                {code: 7, base: "Strawberry Shortcake", price: 1100}
            ]
  puts "\nPlease choose your cake base:"
  puts "\n"
    for x in 1..$cakeBase.length
      puts "#{x}. #{$cakeBase[x-1][:base]} starting at #{$cakeBase[x-1][:price]}"
    end
  puts "\n"
  basechoice = gets.chomp
  case basechoice
  when '1'
    printbase = "Sponge Cake"
    $baseprice = 800
    showFlavor
    showFrosting
    showLayers
  when '2'
    printbase = "Chiffon"
    $baseprice = 1200
    showFlavor
    showFrosting
    showLayers
  when '3'
    printbase = "Cheesecake"
    $baseprice = 1500
    showFlavor
  when '4'
    printbase = "Carrot Cake"
    $baseprice = 800
    showFrosting
    showLayers
  when '5'
    printbase = "Mousse Cake"
    $baseprice = 900
    showFlavor
  when '6'
    printbase = "Red Velvet Cake"
    $baseprice = 1200
    showFrosting
    showLayers
  when '7'
    printbase = "Strawberry Shortcake"
    $baseprice = 1100
    showFrosting
    showLayers
  else
    puts "Oops, wrong code!"
  end
    $opened_file.write("\n")
    $opened_file.write(printbase)
end
#
def showSize
  $cakeSize = [ {code: 1, size: "9 inch", price: "from the baseprice of the type of cake"},
                {code: 2, size: "12 inch", price: "from the baseprice of the type of cake + 400"},
                {code: 3, size: "15 inch", price: "from the baseprice of the type of cake + 800"},
                {code: 4, size: "Custom", price: "depends on the consultation with the baker!"},
               ]
  puts "\nPlease choose your cake size:"
  puts "\n"
    for x in 1..$cakeSize.length
      puts "#{x}. #{$cakeSize[x-1][:size]}, #{$cakeSize[x-1][:price]}."
    end
  puts "\n"
  sizechoice = gets.chomp
  case sizechoice
  when '1'
    printsize = "9 inches"
    $sizeprice = 0
  when '2'
    printsize = "12 inches"
    $sizeprice = 400
  when '3'
    printsize = "15 inches"
    $sizeprice = 800
  when '4'
    printsize = "Custom size, confirm with the customer."
    $sizeprice = 1000
  else
    puts "Oops, wrong code!"
end
  $opened_file.write("\n")
  $opened_file.write(printsize)
end
#
def showFlavor #only for sponge cake, chiffon cake, mousse cake and cgeesecake
  $cakeFlavor = [ {code: 1, flavor: "Vanilla", price: 100},
                  {code: 2, flavor: "Chocolate", price: 100},
                  {code: 3, flavor: "Strawberry", price: 200},
                  {code: 4, flavor: "Coffeee", price: 200},
                  {code: 5, flavor: "Orange/Lemon", price: 200},
            ]
  puts "\nPlease choose your cake base flavor:"
  puts "\n"
    for x in 1..$cakeFlavor.length
      puts "#{x}. #{$cakeFlavor[x-1][:flavor]}, costing an additional #{$cakeFlavor[x-1][:price]}"
    end
  puts "\n"
  flavorchoice = gets.chomp
  case flavorchoice
  when '1'
    printflavor = "Vanilla"
    $flavorprice = 100
  when '2'
    printflavor = "Chocolate"
    $flavorprice = 100
  when '3'
    printflavor = "Strawberry"
    $flavorprice = 200
  when '4'
    printflavor = "Coffee"
    $flavorprice = 200
  when '5'
    printflavor = "Orange/Lemon"
    $flavorprice = 200
  else
    puts "Oops, wrong code!"
end
    $opened_file.write("\n")
    $opened_file.write(printflavor)
end
#
def showFrosting # only for sponge cake, chiffon, carrot, red velvet, Strawberry
  $cakeFrosting = [ {code: 1, frosting: "Buttercream Frosting", price: 200},
                  {code: 2, frosting: "Cream Cheese Frosting", price: 300},
                  {code: 3, frosting: "Meringue Buttercream", price: 200},
                  {code: 4, frosting: "Ganache", price: 300},
                  {code: 5, frosting: "Whipped Cream Frosting", price: 100},
            ]
  puts "\nPlease choose your cake frosting type:"
  puts "\n"
    for x in 1..$cakeFrosting.length
      puts "#{x}. #{$cakeFrosting[x-1][:frosting]}, costing an additional #{$cakeFrosting[x-1][:price]}."
    end
  puts "\n"
  frostingchoice = gets.chomp
  case frostingchoice
  when '1'
    printfrosting = "Buttercream Frosting"
    $frostingprice = 200
  when '2'
    printfrosting = "Cream Cheese Frosting"
    $frostingprice = 300
  when '3'
    printfrosting = "Meringue Buttercream"
    $frostingprice = 200
  when '4'
    printfrosting = "Ganache"
    $frostingprice = 300
  when '5'
    printfrosting = "Whipped Cream Frosting"
    $frostingprice = 100
  else
    puts "Oops, wrong code!"
end
    $opened_file.write("\n")
    $opened_file.write(printfrosting)
end
#
def showLayers #only for sponge cake, chiffon cake, carrot, red, Strawberry
  $cakeLayer = [{code: 1, layer: "1 layer", price: "0. -- At no addiitonal cost"},
                {code: 2, layer: "2 layers", price: "300"},
                {code: 3, layer: "3 layers", price: "500"},
               ]
  puts "\nPlease choose how many layers your cake will be:".
  puts "\n"
    for x in 1..$cakeLayer.length
      puts "#{x}. #{$cakeLayer[x-1][:layer]}, with an additional #{$cakeLayer[x-1][:price]}."
    end
  puts "\n"
  layerchoice = gets.chomp
  case layerchoice
  when '1'
    printlayer = "1 layer"
    $layerprice = 0
  when '2'
    printlayer = "2 layers"
    $layerprice = 300
  when '3'
    printlayer = "3 layers"
    $layerprice = 500
  else
    puts "Oops, wrong code!"
end
  $opened_file.write("\n")
  $opened_file.write(printlayer)
end


banner
newrecord
showShape
showBase
showSize

$finalprice = $sizeprice + $baseprice + $flavorprice + $layerprice

puts "Alrighty, your total is: #{$finalprice}."
$opened_file.close
