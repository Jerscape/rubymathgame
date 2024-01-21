require_relative './Player'
require_relative './Question'

class Game 

  attr_accessor :score, :player1, :player2, :player_toggle

  def initialize()
    @player_toggle = 0


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
      if player_toggle % 2 == 0 && player1[:instance].lives
        puts "|-----New Turn-------|"
        question = Question.new()
        #prompt player 1
        puts "Your turn #{player1[:instance].name}"
        puts question.prompt
        answer = gets.chomp.to_i
      #assess answer
        if answer == question.answer
          puts "Yes, the correct answer is: #{question.answer}"
          #increase player1 live
          # player1[:instance].lives = player1[:instance].lives + 1
          player1[:instance].lives += 1
          player1[:instance].score += 1

          #output to player
          puts "Your score is: #{player1[:instance].score}"
          puts "You have #{player1[:instance].lives} lives left"

        else 
          puts "I am sorry, that is the wrong answer, the correct answer is #{question.answer}"
          # player1[:instance].lives = player1[:instance].lives - 1 
          player1[:instance].lives -= 1
          
          #output to player
          puts "#{player1[:instance].name} You have #{player1[:instance].lives} lives left"
          puts "Your score is: #{player1[:instance].score}"
        end
        @player_toggle += 1
      else 
        #prompt player 2
        puts "|-----New Turn-------|"
        puts "Your turn #{player2[:instance].name}"
        question = Question.new()
        puts question.prompt
        answer = gets.chomp.to_i
        if answer == question.answer
          puts "Yes, the correct answer is: #{question.answer}"
          #increase player1 live
          # player2[:instance].lives = player2[:instance].lives + 1
          player2[:instance].lives += 1
          player2[:instance].score += 1
          #increase toggle either way somewhere
          puts "Your score is: #{player2[:instance].score}"
          puts "You have #{player2[:instance].lives} lives left"
        else 
          puts "I am sorry, that is the wrong answer, the correct answer is #{question.answer}"
          player2[:instance].lives = player2[:instance].lives - 1 
          puts "#{player2[:instance].name} You have #{player2[:instance].lives} lives left"
        end
        @player_toggle += 1
      end #end first else if

    end
    
    puts "That's the game!"
    puts "Final score is #{player1[:instance].name}: #{player1[:instance].score} vs. #{player2[:instance].name}: #{player2[:instance].score}"
    if player1[:instance].score > player2[:instance].score
      puts "#{player1[:instance].name} wins!"
    elsif
      player1[:instance].score == player2[:instance].score
      puts "It's a tie!"
    else 
      puts "#{player2[:instance].name} wins!"
    end

  end

end


