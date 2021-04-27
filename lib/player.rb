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

class HumanPlayer < Player
  attr_accessor :name ,:life_points ,:weapon_level

  def initialize(name)
    @name = name
    @life_points = 100 
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{life_points} points de vie, et une arme de niveau #{weapon_level}"
  end 

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    dice_weapon = rand(1..6) * @weapon_level
    if dice_weapon <= @weapon_level
      puts " tu as trouvé une arme de niveau : #{dice_weapon}"
      puts "M@*#$...tu as déjà une arme de niveau suppérieur"
      return @weapon_level
    else 
      puts " tu as trouvé une arme de niveau : #{dice_weapon}"
      puts " bravo, voici une nouvelle arme de niveau : #{dice_weapon}"
      return dice_weapon
    end
  end

  #def search_health_pack
    #dice_health = rand(1..6) 
    #if dice_health == 1
      #puts " tu n'a rien trouvé niveau hp "
    #end
    #if 2 => dice_health => 5
    #  puts " tu a trouvé un pack avec +50 hp"
    #  return  @life_points + 50
   #else 
    #  puts " bravo tu es cocu !!"
    #  return @life_points + 80
    
    #end
  #end
    

end

