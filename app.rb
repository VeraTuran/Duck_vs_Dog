require 'bundler'
require 'pry'
#require 'colorize'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

require_relative 'lib/duck'
require_relative 'lib/dog'
require_relative 'lib/fight'






def perform

	# naming the players
	player1 = Player.new("Josiane")
	player2 = Player.new("José")

	# little ambiance intro
	puts ""
	puts ""
	puts ""


	puts "Mesdames et messieurs"
	puts ""
	sleep 2

	puts "Vous allez assister à un combat exceptionnel !"
	puts ""
	sleep 3

	puts "Voici nos deux candidats d'aujourd'hui:"
	puts ""
	sleep 3

	puts "A ma droite: #{player1.name}, au plumage d'une blancheur insolente !"
	puts ""
	sleep 3

	puts duck

	sleep 3


	puts "A ma gauche: #{player2.name}, à la machoire d'acier !"
	puts ""
	sleep 3

	puts dog

	sleep 3

	# looping game flow
	while player1.life_points > 0 && player2.life_points > 0
		puts "Voici l'état de nos combattants :"
		puts ""
		sleep 3
		player1.show_state
		puts ""
		sleep 3
		player2.show_state
		puts ""
		sleep 3
		puts "QUE LE COMBAT COMMENCE !!"
		sleep 1
		puts fight
		sleep 3
		player1.attacks(player2)

		if player2.life_points <= 0
			break
		end
		sleep 3
		puts ""
		player2.attacks(player1)
		sleep 3
		puts ""
		puts ""
		puts ""

	end
end

perform






binding.pry