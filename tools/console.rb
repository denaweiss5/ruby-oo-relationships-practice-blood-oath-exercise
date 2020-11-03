require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


follower_1 = Follower.new("Dena", 23, "Better safe than sorry")
follower_2 = Follower.new("Gidon", 24.8, "Jokes, Jokes, Jokes")
follower_3 = Follower.new("Rik", 50, "Devils Advocate")

# :name, :age, :life_motto

cult_1 = Cult.new("Cult_1", "Chicago", 2000, "Welcome" )
cult_2 = Cult.new("cult_2", "Florida", 2008, "HOLA")
cult_3 = Cult.new("Cult_3", "California", 1990, "HELLO!!!!")
cult_4 = Cult.new("cult_4", "Denver", 1998, "BYE")

# :name, :location, :founding_year, :slogan

bloodoath_1 = BloodOath.new(follower_1, cult_2)
bloodoath_2 = BloodOath.new(follower_2, cult_2)
bloodoath_3 = BloodOath.new(follower_3, cult_3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits