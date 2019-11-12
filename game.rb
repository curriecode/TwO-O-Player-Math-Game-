class Game
  attr_reader :player_name_instance

  def initialize(player1, player2)
    @player1_instance = player1
    @player2_instance = player2

    puts "Alright #{@player1_instance.name} here's your first challenge."
  end
  
#generates challenge with player1 name
  def generate_challenge1(player_name)
    num1 = rand(1...20)
    num2 = rand(1...20)

    puts " #{player_name}: What does #{num1} plus #{num2} equal?"
    answer(num1, num2, player_name)
  end

  # generates challenge with player2 name
  def generate_challenge2(player_name)
    num1 = rand(1...20)
    num2 = rand(1...20)

    puts " #{player_name}: What does #{num1} plus #{num2} equal?"
    answer(num1, num2, player_name)
  end


  def answer(num1, num2, player_name)

    correct_answer = num1 + num2
    player_answer = gets.chomp.to_i

    if player_answer == correct_answer
      puts "#{player_name}: YES you are correct."
      update_score(@player_name.points)
      
    else
      puts "#{player_name}: Seriously? No!"
      update_score(@player_name.points - 1)
    end
  end

  def update_score(points)
    # points = 3
    puts "#{@player1_instance.name}: #{points}/3 vs #{@player2_instance.name}: #{points}/3"
  end
end