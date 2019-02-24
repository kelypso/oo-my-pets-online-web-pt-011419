class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  # Instance Methods
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end 
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    @pets.collect do |species, dog|
      if species == :dogs
        dog.each do |name|
          name.mood = "happy"
        end
      end
    end
  end
  
  def play_with_cats
    @pets.collect do |species, cat|
      if species == :cats
        cat.each do |name|
          name.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    
  end
  
  # Class Methods
  def self.all
    @@all
  end
  
  def self.count
    self.all.size
  end
  
  def self.reset_all
    self.all.clear
  end
end