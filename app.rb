require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/game'
require 'app/player'
require 'app/board'
require 'app/boardcase'
require 'views/show'


#Creation des joueurs
puts "Le 1er joueurs peut entrer son pseudo :"
player1 = gets.chomp
puts "Le 2eme joueur peut entrer son pseudo :"
player2 = gets.chomp

my_game = Game.new(player1, player2)





binding.pry
puts "C'est la fin"
