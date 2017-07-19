thing = "%{first} %{second} %{third} %{fourth}"

puts thing % {first: 1, second: 2, third: 3, fourth: 4}
puts thing % {first: "one", second: "two", third: "three", fourth: "four"}
puts thing % {first: true, second: false, third: true, fourth: false}
puts thing % {first: thing, second: thing, third: thing, fourth: thing}

puts thing % {
  first: "Honey came in and she caught me red-handed",
  second: "Creeping with the girl next door.",
  third: "Picture this, we were both butt-naked,",
  fourth: "banging on the bathroom floor."
}

puts %{tu mi porti su e poi mi lasci cadere
tu mi porti su e poi mi lasci cadere
ah che bellezza!
ah che dolore!
ah che bellezza!
ah che dolore!
ah che bellezza!
ah che dolore!
così che va la vita, così che va lamore...
}

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
