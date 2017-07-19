def ask_numbers
    print "Input A: "
    a = gets.chomp.to_f
      if (a == 0)
        puts "Stop playin, man"
      return
      end
    print "Input B: "
    b = gets.chomp.to_f
      if (b == 0)
        puts "Stop playin, man"
      return
      end
    print "Input C: "
    c = gets.chomp.to_f
end

def operation
d = (b*b) - (4*a*c)
e = Math.sqrt(d)
posi = ((-1*b) + e)/(2*a)
nega = ((-1*b) - e)/(2*a)
puts "The values of x are: #{posi.round(2)} and #{nega.round(2)}. \nIn fractions, the answers are: #{posi.to_r.rationalize(0.05)} and #{nega.to_r.rationalize(0.05)}."
end

ask_numbers
operation
