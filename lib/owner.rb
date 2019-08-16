class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  def name
    @name
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
    @cats
  end
  
  def dogs
    @dogs
  end
    
  def buy_cat(cat)
    Cat.new(cat, self) 
  end
  
    def buy_dog(dog)
    Dog.new(dog, self) 
  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each {|cat| cat.mood = "happy"
    }
  end
  
  def sell_pets
    pets = @dogs+@cats
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
        @dogs = []
    @cats = []
end
#        expect(@owner.list_pets).to eq("I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s).")
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end