class Player
	attr_accessor :name, :life_points


	#initialize a player
	def initialize (name)
		@name = name
		@life_points = 10
	end


	#show how many life points the player has left
	def show_state
		if @life_points > 0
			puts "#{@name} a #{@life_points} points de vie."
		else
      		puts "#{@name} n'a plus de points de vie."
    	end
	end


	#Inflict damages on a player
  	def gets_damage (damage_received)
    	@life_points = @life_points - damage_received
    	
    	if @life_points <= 0
      		puts "#{@name} est K.O.!"
    	end
  	end


  	#Inflict damages on a player passed in argument and displays actions
  	def attacks(player)
	    puts "#{@name} attaque #{player.name}"
	    damage = compute_damage
		puts "#{@name} inflige #{damage} points de dégats à #{player.name}"
	    player.gets_damage(damage)
  	end


	#Return a random damage number between 1 and 6
	def compute_damage
    	return rand(1..6)
  	end
end






