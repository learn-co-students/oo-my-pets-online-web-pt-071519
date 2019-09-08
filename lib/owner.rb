  #Owner owns the cat and dog
  #Owner has many cats and dogs - when you see has many, think array/collection
  #Cat belongs to Owner
  #Dog belongs to Owner
  
  class Owner
    
    attr_reader :name, :species
    attr_accessor :dogs, :cats #:pets
    @@all = [] #everything outside of a method has to be a class attribute
    
    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
      @dogs = [] #has to be added to attr_reader in order to access it; this is the link to the dog class
      @cats = [] #this is the link to the cats class
      #@pets = {:dogs => [], :cats => []}
    end
  
    def say_species
      "I am a #{@species}."
    end
    
    def self.all
      @@all
    end
    
    def self.count
      @@all.size #@@all.length, @@all.count
    end
    
    def self.reset_all
      @@all.clear #self.all.clear
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

    def buy_cat(name)
      @cats << Cat.new(name, self)
    end

    def buy_dog(name)
      @dogs << Dog.new(name, self)
    end

    def walk_dogs
      self.dogs.each do |dog|
        dog.mood = "happy"
      end
    end

    def feed_cats
      self.cats.each do |cat|
        cat.mood = "happy"
      end
    end

    def sell_pets
      self.cats.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
      self.dogs.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
      
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

  end