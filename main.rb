require './player'
require './game'

player1 = Player.new("player 1", 3)
puts "Hello #{player1.name} please enter your name"
player1.name=(gets.chomp)
puts "Thanks #{player1.name}!"

player2 = Player.new("player 2", 3)
puts "Hello #{player2.name} please enter your name"
player2.name=(gets.chomp)
puts "Thanks #{player2.name}!"
# puts "Alright #{player1.name} and #{player2.name} lets get started!"

game1 = Game.new(player1, player2)
game1.generate_challenge1(player1.name)
game1.generate_challenge2(player2.name)

# Player class, will have methods relevant to players, name and lives
# will be initialized with name
#will have method for lifes 

#Game class, will have methods relevent to the game play,
# questions and math logic