require 'pry'
class Owner
  
   attr_accessor :pets 
attr_reader :name,:species
   @@all = []
  
   def initialize(name)
    @species = "human"
    @name=name
    @@all << self
    @pets = { :dogs => [], :cats => [] }
   end
   def self.all
    @@all
   end
   def self.reset_all
    @@all.clear
   end
   def self.count 
    @@all.size
   end
   def say_species
    "I am a #{species}."
   end
   def buy_cat(name)
    cat = Cat.new(name,self)
   # @pets[:cats] << cat
    cat
   end
   def buy_dog(name)
    dog = Dog.new(name,self)
    #@pets[:dogs] << dog
    dog
   end
   
   def walk_dogs
    self.dogs.map {|dog| dog.mood = "happy"}

   end
   
   def feed_cats
    self.cats.map {|cat| cat.mood = "happy"}
  
   end
   
   def sell_pets
     pets= self.dogs + self.cats
    #@pets.each do |type, animal|
      pets.each do |pet| 
        
        pet.mood  = "nervous"
        pet.owner = nil
      end
      
 #  end
   #Owner.reset_all
   #binding.pry
  # pets.clear
   end
    

   def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
   end
   
   def cats
     Cat.all.select{|cat|cat.owner==self}
   #@pets[:cats]
   end
   
      def dogs
     Dog.all.select{|dog|dog.owner==self}
   #@pets[:dogs]
   end
end
