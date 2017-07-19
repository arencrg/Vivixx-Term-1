class Compliments
def self.whatscookin(name)
  niceties = [
      "Dear #{name}, your smile is contagious.",
      "Dear #{name}, you look great today.",
      "Dear #{name}, you should be thanked more often.",
      "Dear #{name}, you bring out the best in other people.",
      "Dear #{name}, you have impeccable manners.",
      "Dear #{name}, I like your style.",
      "Dear #{name}, you have the best laugh.",
      "Dear #{name}, I appreciate you.",
      "Dear #{name}, you're gorgeous -- and that's the least interesting thing about you, too.",
      "Dear #{name}, you are enough.",
      "Dear #{name}, you're strong.",
      "Dear #{name}, you're really something special.",
      "Dear #{name}, you're an awesome friend.",
      "Dear #{name}, you light up the room.",
      "Dear #{name}, your creative potential seems limitless.",
      "Dear #{name}, you should be proud of yourself.",
      "Dear #{name}, you're more helpful than you realize.",
      "Dear #{name}, you have a great sense of humor.",
      "Dear #{name}, you're inspiring.",
      "Dear #{name}, you're someone's reason to smile.",
      "Dear #{name}, you are brave.",
      "Dear #{name}, you're even more beautiful on the inside than you are on the outside.",
      "Dear #{name}, you have the courage of your convictions.",
      "Dear #{name}, you're always learning new things and trying to better yourself, which is awesome.",
      "Dear #{name}, you are making a difference."
              ]

  x = niceties.sample

  puts "\n\n"
  puts '♥ ♥ ♥ ♥ ♥ ' * 11
  puts "\n"
  puts " ♥ |  #{x}  | ♥ ".center(110)
  puts "\n"
  puts '♥ ♥ ♥ ♥ ♥ ' * 11
  puts "\n\n"
  end
end
