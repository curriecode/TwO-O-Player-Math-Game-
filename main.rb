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

game1 = Game.new(player1, player2)
game1.generate_challenge()