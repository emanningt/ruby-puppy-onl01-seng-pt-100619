class Dog 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all
  end
  
  def self.save
    @@all.cycle
  end
  
  def self.print_all(name)
   @@all.find { |x| x.name == name}
  end
  
  def self.clear_all
    @@all.clear
  end
  
end