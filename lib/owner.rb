require 'pry'

class Owner
attr_accessor :name
attr_reader :species
attr_writer :pets, :all
@@all = []
def initialize(species)
  @species = species
  @pets = {:fishes => [], :dogs => [], :cats => []}

  @@all << self
end

def say_species
  "I am a human."
end



def pets
@pets
end

def buy_fish(fish_name)
  fish_name = Fish.new(fish_name)
  self.pets[:fishes] <<  fish_name

end

def buy_cat(cat_name)
  cat = Cat.new(cat_name)
  self.pets[:cats] <<  cat

end

def buy_dog(dog_name)
  dog = Dog.new(dog_name)
  self.pets[:dogs] <<  dog

end

def walk_dogs
  self.pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  self.pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  self.pets.each do |animal_name,animal_array|
    animal_array.each do |animal|
      animal.mood = "nervous"
    end
  end
  @pets.clear
end

def list_pets

 "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."

end

def self.all
  @@all
end

def self.reset_all
  self.all.clear
end

def self.count
  self.all.count
end

end
