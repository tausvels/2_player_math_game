class Player
  
  @@num_of_player = 0
  attr_accessor :name, :lives
  def initialize(n)
    self.name=n
    self.lives=3
    @@num_of_player += 1
  end
  #--- INSTANCE METHODS ----
  def info
    p "Player's name is #{self.name} and currently has #{self.lives} lives."
  end

  def destroy_life
    self.lives-=1
  end

  #--- CLASS METHODS ------- 
  def self.stat
    p @@num_of_player
  end
end