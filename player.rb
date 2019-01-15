module MathGame

class Player 
  attr_reader :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def fullstats 
    "#{@name} #{@lives}"
  end

  def self.create(name, lives)
    user = Player.new(name, lives)
    @@users << user
    user
  end
end