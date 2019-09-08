class Cat
  
  attr_reader :name
  attr_accessor :mood, :owner
    
  @@all = [] 
  
  def initialize(name, owner)
    @name = name #how is this instance variable gonna be accessible? attr_reader
    @owner = owner #this is the link to the owner class
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
end