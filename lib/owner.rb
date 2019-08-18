require 'pry'
class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :species, :name 

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => []}
    #@pets = pets
    @@owners << self 
  end
  def cats
    
    Cat.all.select{|cat|cat.owner == self}
     
  end
  def dogs
    
  Dog.all.select{|dog|dog.owner == self}
   
end

  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(cat_name)
    #binding.pry
    #@pets[:cats] << Cat.new(cat_name)
    # self.cats.each do |cat|
    #   self.pets[:cats] << cat
    # end
    Cat.new(cat_name, self)
  end 

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
    #@pets[:dogs] << Dog.new(dog_name)
  end

  def feed_cats
    Cat.all.each do |cat|
    #make all self.cats mood into happy
    cat.mood = "happy"
    end
  end

  def walk_dogs
    Dog.all.each do |dog|
      #binding.pry
    #@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type_of_animal, array|
      binding.pry
      #name_array.each do |pet|
        #pet.mood = "nervous"
        #name_array.delete(pet)
      
      #end 
    end
    #@pets = {}
  end

  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self. count
    @@owners.length
  end
end