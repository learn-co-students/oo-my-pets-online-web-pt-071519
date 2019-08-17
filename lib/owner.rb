require 'pry'
class Owner
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  def species
    @species
  end
  def say_species
    "I am a #{species}."
  end
  def self.all
   @@all
 end
 def self.count
   @@all.count
 end
 def self.reset_all
   @@all.clear
 end
 def cats
   gatos = Cat.all.find_all{|pet| pet.owner == self}
   gatos
 end
 def dogs
   perros = Dog.all.find_all{|pet| pet.owner == self}
   perros
end
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
    end
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
  end
  def walk_dogs
    perros = Dog.all.find_all{|pet| pet.owner == self}
    perros.map{ |dog| dog.mood = "happy"}
  end
  def feed_cats
    gatos = Cat.all.find_all{|pet| pet.owner == self}
    gatos.map{ |cat| cat.mood = "happy"}
  end
  def sell_pets
    perros = Dog.all.find_all{|pet| pet.owner == self}
    perros.map do  |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    gatos = Cat.all.find_all{|pet| pet.owner == self}
    gatos.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  def list_pets
    gatos = Cat.all.find_all{|pet| pet.owner == self}
    perros = Dog.all.find_all{|pet| pet.owner == self}
   "I have #{perros.count} dog(s), and #{gatos.count} cat(s)."
end
end
