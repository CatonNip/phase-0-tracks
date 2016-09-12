module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "<3"
end

#Driver Code#
p Shout.yell_angrily("DARN!")
p Shout.yelling_happily("YAY!")