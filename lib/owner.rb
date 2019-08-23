class Owner
 attr_reader :name, :species 
 @@all =[] 
def initialize(name)  
  @name = name 
  @@all << self 
end

def species
  @species = "human"
end 

def say_species 
  return "I am a human." 
end 

def self.all 
  @@all 
end 

def self.count 
  @@all.length 
end 

def self.reset_all 
  @@all.clear 
end 

def cats 
  Cat.all.select {|cat| cat.owner == self } 
end 

def dogs 
  Dog.all.select {|dog| dog.owner == self } 
end 

def buy_cat(cat_name) 
  new_cat = Cat.new(cat_name, @owner= self)
 new_cat.owner == self 
end 

def buy_dog(dog_name) 
  new_dog = Dog.new(dog_name, @owner = self) 
  new_dog.owner == self 
end 

def walk_dogs 
  self.dogs.each do |dog| dog.mood = "happy"
end 
end 

def feed_cats 
  self.cats.each do |cat| cat.mood = "happy" 
end 
end 

def sell_pets 
pets = cats + dogs 
pets.each do |pet| pet.mood = "nervous"
end 
pets.each do |pet| pet.owner = nil
end 
end 
def list_pets 
 return  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end 
end 
