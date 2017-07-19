@voterturnout = 0
@candichoiceM = 0
@candichoiceK = 0
class Candies
  def initialize(name, votes)
    @name = name.to_s.capitalize
    @votes = votes.to_i
  end
end

class Voters
  def initialize(votername)
    @votername = votername.to_s
  end

  def haveyouvoted
    vname = Voters.new(vname)
  end

  def showvoters
    puts "#{vname} has voted for #{name}."
  end
end

def dothething
    puts "Who are you voting for?\n1) Mika\n2) Kenneth?"
    candichoice = gets.chomp.to_i
    if candichoice == 1
    puts "You chose Mika."
      @candichoiceM +=1
      @voterturnout +=1
      puts "There are currently #{@candichoiceM} votes for Mika."
      puts "There have been #{@voterturnout} votes in total."
    end
    if candichoice == 2
      @candichoiceK += 1
      @voterturnout += 1
      puts "You chose Kenneth."
      puts "There are currently #{@candichoiceK} votes for Kenneth."
      puts "There have been #{@voterturnout} votes in total."
    end
end

  candie1 = Candies.new('Mika', 0)
  candie2 = Candies.new('Kenneth', 0)


  puts "Input your name:"
  vname = gets.chomp.to_s.capitalize
  dothething
