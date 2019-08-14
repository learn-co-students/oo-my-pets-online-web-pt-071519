require "pry"

#Owner owns the cat & dog 
#Owner has many cats and dogs 
#Cat belongs to Owner 
#Dog belongs to Owner 

class Owner
  attr_writer :cats 
  attr_reader :name, :species, :cats, :dogs 
  attr_accessor :pets
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
    Cat.all.select {|cat| cat.mood = "happy"}
  end 
  
  def dogs 
   Dog.all.select {|dog| dog.owner == self}  
 end 
 
 def buy_dog(name)
   Dog.new(name, self)
 end 
 
 def walk_dogs
  Dog.all.select{|dog| dog.mood = "happy"}
end 

def pets 
  @pets << Dog.all.name && Cat.all.name 
  binding.pry 
end 

def sell_pets 
   
 end 
 
 def list_pets
   "I have #{@owner.dogs.count}dog(s), and #{@owner.cats.count} cat(s)."
 end 
 
end