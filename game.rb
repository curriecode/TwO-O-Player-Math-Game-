class Game
  attr_reader :player_name_instance

  def initialize(player1, player2)
    @player1_instance = player1
    @player2_instance = player2
    @turn_counter = 1

    puts "Alright #{@player1_instance.name} here's your first challenge."
  end


#generates challenge with player1 name
  def generate_challenge()
    if @turn_counter % 2 == 0
      current_player = @player2_instance
    end
    if @turn_counter % 2 != 0
      current_player = @player1_instance
    end

    num1 = rand(1...20)
    num2 = rand(1...20)

    puts " #{current_player.name}: What does #{num1} plus #{num2} equal?"
    answer(num1, num2, current_player)
  end


  def answer(num1, num2, current_player)
    # puts "this is #{@player1_instance.points=(@player1_instance.points - 1)}"
    
    correct_answer = num1 + num2
    player_answer = gets.chomp.to_i

    if player_answer == correct_answer
      puts "#{current_player.name}: YES you are correct."
      # @player1_instance
      display_score()
      display_new_turn()
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.points -= 1
      display_score()
      if current_player.points != 0
        display_new_turn()
      else
        return end_game()
      end
    end
  end

  def end_game()
    if @player1_instance.points == 0
      puts "#{@player2_instance.name} Wins with a score of #{@player2_instance.points}/3"
      puts "-------------GAME OVER--------------"
    elsif @player2_instance.points == 0
      puts "#{@player1_instance.name} Wins with a score of #{@player1_instance.points}/3"
      puts "-------------GAME OVER--------------"
    end
  end

  def display_score()
    puts "#{@player1_instance.name}: #{@player1_instance.points}/3 vs #{@player2_instance.name}: #{@player2_instance.points}/3"
  end

  def display_new_turn()
    @turn_counter += 1
    puts "-------------NEW TURN--------------"
    generate_challenge()
  end
end