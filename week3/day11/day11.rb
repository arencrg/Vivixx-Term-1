counter = 0

loop do
  counter += 1
  puts "Counter is at #{counter}"
  break if counter == 5
end

loop do
  puts "Type STOP to end everythingggg"
  input = gets.chomp
  break if input == "STOP"
  puts "Another round then!"
end

def menu
  puts "Sinong mas maganda:"
  puts "Aren\nIkaw\nEwan ko, someone else siguro???"
end

loop do
  menu
  ganda = gets.chomp.downcase
if ganda == 'aren'
  puts "Tama yan bes!"
  break
elsif ganda == 'ako'
  puts "Sure ka diyan?"
  break
else ganda == 'someone'
  puts "Sino pa ba?!"
end
end

loop do
  menu
  ganda = gets.chomp.downcase

  case ganda
  when "aren"
    puts "Tama yan beshiemae!"
    break
  when "ako"
    puts "Suuuuuure."
  else
    puts "Ay ewan ko na sa'yo."
  end
end
