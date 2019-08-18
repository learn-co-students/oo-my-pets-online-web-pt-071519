require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species
  @@all = []
  # code goes here
  def initialize(name,species="human")
    @name = name
    @species = species
    @cats = []
    @dogs = []
    self.save
  end 

  def save 
    @@all << self
  end

  def say_species
    p "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count  
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end 

  def cats
    Cat.all.select do |cat| 
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog| 
      dog.owner == self
    end
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name,self)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name,self)
  end

  def walk_dogs
    dogs.map{|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.map{|cat| cat.mood = "happy"}
  end

  def sell_pets
    cats.map{|cat| cat.mood = "nervous"}
    cats.map{|cat| cat.owner = nil}
    dogs.map{|dog| dog.mood = "nervous"}
    dogs.map{|dog| dog.owner = nil}
  end

  def list_pets
    p "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end