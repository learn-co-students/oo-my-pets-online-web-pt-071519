class Cat
   attr_reader :name
  attr_accessor :mood, :owner

@@all = []

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end