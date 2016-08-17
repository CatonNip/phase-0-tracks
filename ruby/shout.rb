module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "<3" + " ;D"
  end
end

#DRIVER CODE
p Shout.yell_angrily("DARN!")
p Shout.yelling_happily("YAY!")