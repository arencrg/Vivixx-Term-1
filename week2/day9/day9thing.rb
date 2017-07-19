def line
  puts "\n"
  puts '* - ' * 5
end

line
puts "Open a playlist: "
filename = gets.chomp
opened_file = File.open(filename + '.txt', 'r+')
line
puts "Here's the #{filename} playlist:"
puts opened_file.read
line
puts "How many songs do you want to add to this playlist to complete your ~ angry highschooler ~ experience?"
y = gets.chomp.to_i
x = 0
    while x < y
    puts "\nEnter the song title and the artist:"
    track = gets
    opened_file.write(track)
    x += 1
    end

#playlistArray=[]
#    opened_file.each_line {|line|
#      playlistArray.push line }


puts "Here's your updated playlist:"
opened_file.rewind
puts opened_file.read

line
puts "Do you want to delete a song?\nWhich one? (enter their line number here)"
x = gets.chomp.to_i - 1

songdelete = File.open(opened_file, "r") { |checksongs|
      checksongs.readlines  }
songdelete.delete_at(x)
line
puts "Here's your updated playlist:"
puts songdelete
opened_file.close
