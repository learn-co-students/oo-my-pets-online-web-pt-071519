require 'pry'
class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  @@all = []
  @@pets = Hash[:cats => [], :dogs => []]
  
  def initialize(name = owner)
    @name = name 
    @species = "human"
    @@all << self
    
  end
  
  def say_species 
    "I am a #{@species}."
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
     arr = []
     Cat.all.each do |cat| 
       if cat.owner == self
         arr << cat
       end
     end
     arr
   end
    
   def dogs
    arr = []
     Dog.all.each do |dog|
       if dog.owner == self 
         arr << dog 
       end
     end
     arr
   end
 
 def buy_cat(name)
   @@pets[:cats] << Cat.new(name, self)
 end
 
 def buy_dog(name)
   @@pets[:dogs] << Dog.new(name, self)
 end
 
 def walk_dogs 
   Dog.all.each do |dog|
     dog.mood = "happy"
   end
 end
 
 def feed_cats 
   Cat.all.each do |cat| 
     cat.mood = "happy"
   end
 end
 
 def sell_pets
   Cat.all.each do |cat|
     cat.mood = "nervous"
     cat.owner = nil
     Dog.all.each do |dog|
       dog.mood = "nervous"
       dog.owner = nil
     end
    end
  end
  
  def list_pets 
    "I have #{@@pets.count} dog(s), and #{@@pets.count} cat(s)."
  end
  
 end