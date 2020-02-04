require "./Player.rb"
require "./Question.rb"
require "./Game.rb"

#----- ENTER PLAYER NAME ------ #
# p "Enter player1 name"
# name1=gets.chomp
# p "Enter player2 name"
# name2=gets.chomp

# player1 = Player.new(name1)
# player2 = Player.new(name2)
# player1.info

game=Game.new
game.run_game