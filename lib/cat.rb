class Cat
 
  attr_accessor :mood, :owner
  attr_reader :name, :owner 
  
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