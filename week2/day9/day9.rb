#ask for the filename
puts "Enter file name"
filename = gets.chomp
opened_file = File.open(filename, 'a+')
puts "Add something else: "
something = gets.chomp
#writes the thing on the file
opened_file.write(something)
opened_file.write("\n")


#sends pointer to the beginning of the file
opened_file.rewind
puts '~ ~ ' * 5
#prints everything
print opened_file.read
#we are done with the file
opened_file.close

puts "Give a filename (without the extension!)"
filename = gets.chomp
opened_file = File.new(filename + '.txt', 'a+')
puts "Write a sentence to save to your file #{filename}"
sentence = gets
opened_file.write(sentence)
opened_file.rewind
puts ' <3 ' * 5
print opened_file.read
opened_file.close
