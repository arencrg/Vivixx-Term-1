puts "What if my brain got transplanted into a machine? What now?"
puts "What am I? Who ammmm I?!?!? *existential crisis intensifies*"

profileAren = {
  first_name: 'Jean Clarence' ,
  last_name: 'Cariaga' ,
  nickname: 'Aren' ,
  artistname: 'Diyosa',
  age: 21 ,
  about: 'v sad adult, stay-at-home daughter and an eater of breakfast food' ,
  pros: 'quite skilled, v smart, v passionate, v angery little child, and pweds na' ,
  cons: 'kind of an asshole, is very much aware of her intelligence, v narcissistic',
}

puts "First name #{profileAren[:first_name]}, last name #{profileAren[:last_name]}. Learn it!"
puts "How old is she? How long has she been trying to survive this wretched floating ball of dirt in space?"
puts "#{profileAren[:age]} years, that's how fuckin long"
puts "Yeah? And what about her?"
puts "Uhhh she doesn't do much, she's basically a #{profileAren[:about]}."
puts "What does she even do... Like... why is she even here...."
puts "Ya know what, she's #{profileAren[:pros]}!"
puts "Hm. She sounds pretty okay? She can't be thaaaat bad, right?"
puts "Oh. Uh. Actually she's #{profileAren[:cons]} ... but like, she's still pretty ok, I guess?"
puts "Oh well, you can't have it all."

puts "\n"
puts "\n"
puts "---------------------------"
puts "---------------------------"
puts "---------------------------"
puts "\n"
puts "\n"


puts "So, #{profileAren[:nickname]}, I heard you were a musician."
puts "Says here on my list that your stage name is... #{profileAren[:artistname]}? Go change your artist name, man! That's so embarassing!"
newartistname = gets.chomp
profileAren [:artistname] = newartistname
puts "Okay, that's way better! I can' believe you wanted to call yourself Diyosa in the first place, jeez."
puts "#{newartistname.capitalize} is waaaay better! I'll see you at your next gig!"

puts "\n"
puts "\n"
puts "---------------------------"
puts "---------------------------"
puts "---------------------------"
puts "\n"
puts "\n"

farm_trees = [
{ tree: :mango, qty: 5 },
{ tree: :narra, qty: 2 },
{ tree: :coconut, qty: 3 },
{ tree: :mahogany, qty: 6 },
{ tree: :ipil, qty: 1 },
{ tree: :palm, qty: 8 },
{ tree: :banana, qty: 4 },
{ tree: :acacia, qty: 2 },
{ tree: :molave, qty: 3 },
{ tree: :ilangilang, qty: 7 },
]

puts "In this farm,"
farm_trees.each do |info|
  puts "there are #{info[:qty]} #{info[:tree]} trees."
end

puts "\n"
puts "\n"
puts "---------------------------"
puts "---------------------------"
puts "---------------------------"
puts "\n"
puts "\n"

profileSnoop = {
realname: 'Cordozar Calvin Broadus, Jr.' ,
name1: 'Snoop Dogg' ,
name2: 'Snoop Doggy Dogg' ,
}
puts "His real name is #{profileSnoop[:realname]}."
puts "He is most commonly known as #{profileSnoop [:name1]} or #{profileSnoop[:name2]}."
profileSnoop.merge!({name3: 'Snoop Lion' ,})
puts "He also went through a Reggae phase wherein he called himself #{profileSnoop[:name3]}."
puts profileSnoop

puts "---------------------------"
puts "---------------------------"
puts "---------------------------"


#a = {:car => {:color => "red"}}
# => {:car=>{:color=>"red"}}
# b = {:car => {:speed => "100mph"}}
# => {:car=>{:speed=>"100mph"}}
# a.merge(b) {|key, a_val, b_val| a_val.merge b_val }
# => {:car=>{:color=>"red", :speed=>"100mph"}} 
