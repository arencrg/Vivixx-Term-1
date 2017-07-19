class Ham

   attr_accessor :title, :singer, :time

  def initialize(title,singer,time)
    @title = title
    @singer = singer
    @time = time
  end

  def title
    @title
  end

  def singer
    @singer
  end

  def time
    @time
  end

end


newham = Ham.new(0,0,0)

puts "What is the next track?"
xtitle = gets.chomp
newham.title = xtitle
title = newham.title
puts "Who sang this track?"
xsinger = gets.chomp
newham.singer = xsinger
singer = newham.singer
puts "Time?"
xtime = gets.chomp
newham.time = xtime
time = newham.time

puts "\nThe track you entered is #{title} sung by #{singer}, which is #{time} long."
