


class Pokemon
  attr_reader :name, :health, :typen, :skills
  def initialize(name, typen)
    @name = name
    @health = 100
    @typen = typen
    @skills = @typen.flat_map(&:skills)
  end

  def show_typ
    @typen.each do |typ|
    puts "- #{typ.output}"
  end
  end

  def show_skills
  @skills.each do |skill|
    puts "- #{skill.output}"
  end
  end
end



class Feuer
  attr_reader :skills
  def initialize
    @skills = [
      Skills.new("Feueratem", 30),
      Skills.new("Glut", 20)
    ]
  end

  def output
    self.class.name
  end

end

class Wasser
  attr_reader :skills
  def initialize
    @skills = [
      Skills.new("Wasserstrahl", 30),
      Skills.new("KNARRE", 20)
    ]
  end

  def output
    self.class.name
  end

end

class Erde
  attr_reader :skills
  def initialize
    @skills = [
      Skills.new("Erdbeben", 30),
      Skills.new("Dampfwalze", 20)
    ]
  end

  def output
    self.class.name
  end
end
  

class Luft
  attr_reader :skills
  def initialize
    @skills = [
      Skills.new("Wirbelwind", 30),
      Skills.new("Flügelschlag", 20)
    ]
  end

  def output
    self.class.name
  end

end


class Elektro
 attr_reader :skills
  def initialize
    @skills = [
      Skills.new("Elektroshock", 30),
      Skills.new("Blitz", 20)
    ]
  end

  def output
    self.class.name
  end

end

class Normal
 attr_reader :skills
  def initialize
    @skills = [
      Skills.new("Tackle", 30),
      Skills.new("Kratzer", 20)
    ]
  end

  def output
    self.class.name
  end

end

class Skills
  attr_reader :name, :dmg
  def initialize(name, dmg)
    @name = name
    @dmg = dmg
  end

  def output
    "#{@name} verursacht #{@dmg} Schaden."
  end

end

def typobj(typnamen)
  typen = []
  typnamen.each do |name|
    case name.downcase
    when "feuer"
      typen << Feuer.new  
    when "wasser"
      typen << Wasser.new 
    when "erde"
      typen << Erde.new
    when "luft"
      typen << Luft.new
    when "elektro"
      typen << Elektro.new 
    when "normal"
      typen << Normal.new 
    end
  end
  typen
end

  ## Pokemonauswahl
def chose_pokemon                   
  puts "Wähle dein Pokemon Beispiel: Pikachu"
  pokemon_choice = gets.chomp.capitalize
  puts "Wähle 2 Typen für dein Pokemon Beispiel: Feuer, Wasser, Erde, Luft, Elektro, Normal"
  typ_choice = gets.chomp.split(",").map(&:strip)               ##choice to Array
 


  typen = typobj(typ_choice)
  playerpokemon = Pokemon.new(pokemon_choice, typen)
  puts "Dein Pokemon #{playerpokemon.name} hat folgende Typen:"
  playerpokemon.show_typ
  puts "Dein Pokemon #{playerpokemon.name} hat folgende Skills:"
  playerpokemon.show_skills

end

def help
  
end

def enemy_pick


end


def enemyFightLogic
  
end

def fight_one_round
  
end

def reset
  
end


chose_pokemon
enemy_pick
