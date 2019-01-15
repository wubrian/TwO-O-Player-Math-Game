class Game 
  attr_accessor :isPlayer1
  
  def initialize
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')
    @isPlayer1 = true
  end

  def start
    puts "-----Let the game begin-----"
    while @player1.lives > 0 && @player2.lives > 0
      if @isPlayer1
        Turn.new(@player1)
        puts "Player1: #{@player1.lives}/3 VS Player2: #{@player2.lives}/3"
        @isPlayer1 = false
      else
        Turn.new(@player2)
        puts "Player1: #{@player1.lives}/3 VS Player2: #{@player2.lives}/3"
        @isPlayer1 = true
      end
    end
    @winner = ""
    @win_lives = 0
    if @player1.lives != 0
      @winner = @player1.name
      @win_lives = @player1.lives
    else
      @winner = @player2.name
      @win_lives = @player2.lives
    end
    puts "#{@winner} wins with a score of #{@win_lives}/3"
    puts "-----GAME OVER-----"
    puts "Good Bye!"
  end  
end