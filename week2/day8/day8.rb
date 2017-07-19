class Classmate
  def initialize(name)
    @name = name
  end

  def first_name
    "#{@name}"
  end

end

def vote_out
classmatelist = [ 'marc' , 'dea' , 'reggie' , 'william' , 'daniel' , 'dianne' ,
  'chelle' , 'jessie' , 'kenneth' , 'grail' , 'dan' , 'michael' , 'mika' , 'jd' ,
  'trev' , 'joseph' , 'kevin' , 'chester' , 'rodolf' , 'shayne' , 'aren' ]
puts "Here are your classmates:"
puts classmatelist
puts "\nWho do you want to vote out of the class?"
print '> '
xname = gets.chomp.to_s.downcase
puts "You have chosen to remove #{xname} from the class"
classmatelist.delete(xname)
end

vote_out
