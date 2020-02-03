class Player
  
  @@num_of_player = 0
  attr_accessor :name, :lives
  def initialize(n)
    self.name=n
    @@num_of_player += 1
    self.lives=3
  end
  #--- INSTANCE METHODS ----
  def info
    p "Player's name is #{self.name} and currently has #{self.lives} lives."
  end


  #--- CLASS METHODS ------- 
  def self.stat
    p @@num_of_player
  end
end