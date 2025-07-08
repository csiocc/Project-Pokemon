


class Pokemon
  attr_reader :name, :weight
  attr_accessor :health
  @@number_of_pokemons = 0

  def initialize(name, health, weight, typ)
    @@number_of_pokemons += 1
    @name = name
    @health = health
    @weight = weight
    @typ = typ
    puts "initialized #{name}"
    puts "#{name} has #{health} Health and is #{weight} Kg heavy and is Type: #{typ}"
  end

  def info
    "#{name} #{health} #{weight}"
  end
  
  def speak
    p "#{name} #{name}"
  end
  
  def attack(enemy)
    
  end
end

class Normal < Pokemon
  attr_reader :name, :dmg, :immune_t_k, :typ
  attr_accessor :health, :immunity
  
  def initialize(name, health, weight, typ)
    @immune_t_k = true
    @immunity = "Kampf"
    super 
  end

  def info 
    p "1. Tackle 40dmg typ Normal"
    p "2. Blitz 30dmg typ Electro"
  end
  def tackle
    "Tackle, 40"
  end

  def blitz
    "Blitz, 30"
  end

end

class Electro < Pokemon
  attr_reader :name, :dmg, :immune_t_n, :typ
  attr_accessor :health, :immunity

  def initialize(name, health, weight, typ)
    super
    @immune_t_n = true
    @immunity = "Normal"
  end

  def blitz
    "Blitz, 40"
  end

  def tackle
    "tackle, 30"
  end
 
end

class Kampf < Pokemon
  attr_reader :name, :dmg, :immune_t_e, :typ
  attr_accessor :health, :immunity
  

  def initialize(name, health, weight, typ)
    super
    @immune_t_e = true
    @immunity = "Electro"
  end

  def geowurf
   "Geowurf, 40"
  end

  def karateschlag
    "Karateschlag, 30"
  end
 
end

# initialize 3 Pokemon for Testing
# 
pokemon_mauzi = Normal.new("Mauzi", 100, 60, "Normal")
pokemon_pikachu = Electro.new("Pikachu", 80, 80, "Electro")
pokemon_maschock = Kampf.new("Maschock", 140, 140, "Kampf")

player_pok = pokemon_mauzi
pc_pok = pokemon_pikachu

def fight_one_round(player_pok, pc_pok)
  puts "Fight Start: #{player_pok.name} vs #{pc_pok.name}"
  player_pok.speak
  pc_pok.speak

  while player_pok.health >= 0 || pc_pok.health >= 0 do
    puts "Chose your Attack"
    player_pok.info

  end

end

fight_one_round(player_pok, pc_pok)



