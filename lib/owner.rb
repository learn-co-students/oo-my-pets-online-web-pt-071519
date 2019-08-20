class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
  
  @@all = []
 
 def initialize(species)
   @species = species
   @pets = {cats:[], dogs: []}
  end 
  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name 
  end 
  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name 
  end 
  def save 
    @@all << self 
  end 
  def self.count 
   @@all.length
 end 
 
 def self.reset_all
   @@all = []
 end 
 
 def say_species 
   "I am a #{species}." 
 end 
 def walk_dogs 
    @pets[:dogs].each do |walked| 
      mood = "happy"
    end 
    def walk_cats 
    @pets[:cats].each do |walked| 
      mood = "happy"
    end 
  
end 