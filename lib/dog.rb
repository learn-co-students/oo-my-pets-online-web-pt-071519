class Dog
  
  attr_accessor :owner, :mood 
  attr_reader :name, :mood 
  
  @@all = []
  
  def initialize(name, owner_obj)
    @name = name 
    @owner = owner_obj  
    @mood = "nervous"
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
end