require 'pry'
class Owner
  
  attr_accessor :pets
  attr_reader :species, :name 

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => []}
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
    Cat.new(cat_name, self)
  end 

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def feed_cats
    Cat.all.each do |cat|
    cat.mood = "happy"
    end
  end

  def walk_dogs
    Dog.all.each do |dog|
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
        array.each do |pet|
        pet.mood = "nervous"
        pet.owner=nil
        array.delete(pet)
       end 
    end
    
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