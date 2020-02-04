class Game
  attr_accessor :max_num_of_question, :round, :active_player

  def initialize
    self.active_player=nil
    @total_players=[]
    @round = 0
    self.max_num_of_question=10
  end

  def run_game
    puts "Enter name for player1"
    player1=Player.new(gets.chomp)
    @total_players << player1

    puts "Enter name for player2"
    player2=Player.new(gets.chomp)
    @total_players << player2

    #having self. and @ is the same thing. So using @
    @active_player=@total_players[rand(0..1)] # chooses a random player from the players array. Currently there would be 2 players.
    
    while @active_player.lives > 0
      run_game_round
    end
    #end_game function
    game_end

  end

  def next_round
    @round += 1
  end

  #player switch by looking at the @active_player in @total_players
  def player_switch
    if(@active_player == @total_players[0])
      @active_player=@total_players[1]
    else
      @active_player=@total_players[0]
    end
  end

    #the game_end function
  def game_end
    puts " ________________ GAME OVER ______________"
    puts "Sorry #{@active_player.name}, you ran out of lives."
    player_switch
    puts "#{active_player.name} IS THE WINNER!!!"
    puts "#{@active_player.name},you had #{@active_player.lives} #{(@active_player.lives) == 1 ? 'life' : 'lives'} remaining and survived #{(@round / 2).to_i} rounds." 
  end

  def run_game_round
    next_round
    player_switch
    question=Question.new(@max_num_of_question)
    puts " ******** Question #{@round} *********** "
    puts "#{@active_player.name}, you have #{@active_player.lives} #{(@active_player.lives) == 1 ? 'life' : 'lives'} remaining."
    puts "#{@active_player.name} >, #{question.disp_question} "
    answer=gets.chomp.to_i
    
    if question.correct?(answer)
      puts "Well done!"
      @max_num_of_question = (@max_num_of_question*rand(1.0..2.5)).to_i
    else 
      puts "Oopps... You lost this round!"
      @active_player.destroy_life
    end
  end

end