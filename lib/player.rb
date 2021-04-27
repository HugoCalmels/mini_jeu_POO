require "pry"
class Player
  attr_accessor :name ,:life_points
 
    def initialize(name)
      @name = name
      @life_points = 10 
    end

    def show_state
      puts "#{@name} a #{life_points} points de vie"
    end 

    def gets_damage(number)
      @life_points -= number
      
      if @life_points <= 0
         puts "le joueur #{name} a été tué"
      end
    end

    def attacks(player) # retest enemi
      puts "#{name} attaque #{player.name} "
      x = compute_damage # foutue variable pk elle est indispensable ??
      player.gets_damage(x)
      puts "il lui inflige #{x} de dommages "
    end
    
    def compute_damage
      return rand(1..6)
    end
 
  
end

