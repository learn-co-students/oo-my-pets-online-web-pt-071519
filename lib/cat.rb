class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @owner = owner 
    @name = name
    owner.pets[:cats]<<self
    @mood = "nervous"
    @@all << self
  end
  def self.all
    @@all
  end
end

