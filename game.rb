require_relative './Player'
require_relative './Question'

class Game 

  attr_accessor :score, :player1, :player2, :player_toggle

  def initialize()


    @player1 = {}
    @player2 = {}

    puts "Welcome to my Ruby Math Game"
    puts "----------------------------"
    puts "This game requires two players"
    puts " "

    puts "Enter player 1 name"
    playerName1 = gets.chomp
    @player1[:instance] = Player.new(playerName1)
    puts "Welcome, #{@player1[:instance].name}!"
    puts ""
    puts "Enter player 2 name"
    playerName2= gets.chomp
    @player2[:instance] = Player.new(playerName2)
    puts "Welcome, #{@player2[:instance].name}!"
  end

  def play

    #put while loop here
    #maybe it;s if not while
    while player1[:instance].lives > 0 && player2[:instance].lives > 0
      #generate question
      #use if statement and modulus to toggle
      question = Question.new()

      puts question.prompt
      answer = gets.chomp

    end
    
  end

end


