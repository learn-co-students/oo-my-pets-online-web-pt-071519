class Owner
  
  attr_reader :name, :species, :cats
  @@all = []
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name,self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name,self)
  end
  
  def walk_dogs
    Dog.all.each {|each| each.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.each {|each| each.mood = "happy"}
  end
  
  def sell_pets
    Cat.all.each {|each| each.mood = "nervous" }
    Dog.all.each {|each| each.mood = "nervous" }
    Cat.all.each {|each| each.owner = nil }
    Dog.all.each {|each| each.owner = nil }
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end