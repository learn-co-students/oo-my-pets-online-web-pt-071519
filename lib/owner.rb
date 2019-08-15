require "pry"

#Owner owns the cat & dog 
#Owner has many cats and dogs 
#Cat belongs to Owner 
#Dog belongs to Owner 

class Owner
  attr_writer :cats 
  attr_reader :name, :species, :cats, :dogs 
  #attr_writer :species
  #attr_accessor :species
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @species = 'human'
    @cats = []
    @dogs = []
    @pets = [] 
  end 
  
  def say_species
   return "I am a #{@species}." 
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
   # @cats << Cat.all(owner)
    #cat_list
     Cat.all.select {|cat| cat.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name, self) 
  end 
  
  def feed_cats 
    Cat.all.map {|cat| cat.mood = "happy"}
  end 
  
  def dogs 
   Dog.all.select {|dog| dog.owner == self}  
 end 
 
 def buy_dog(name)
   Dog.new(name, self)
 end 
 
 def walk_dogs
  Dog.all.map {|dog| dog.mood = "happy"}
end 

def pets 
  @pets << Dog.all 
  @pets << Cat.all 
  @pets.flatten
#binding.pry 
end 

def sell_pets 
  pets.map do  |pet| 
    pet.mood = "nervous"
    pet.owner = nil
 end 
 end 
 
 def list_pets
   "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
 #end
 end 
 
end