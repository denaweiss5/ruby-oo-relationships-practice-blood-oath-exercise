require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


follower_1 = Follower.new("Dena")
follower_2 = Follower.new("Gidon")
follower_3 = Follower.new("Rik")

cult_1 = Cult.new("Cult_1")
cult_2 = Cult.new("cult_2")
cult_3 = Cult.new("Cult_3")

bloodoath_1 = BloodOath.new(follower_1, cult_1)
bloodoath_2 = BloodOath.new(follower_2, cult_2)
bloodoath_3 = BloodOath.new(follower_3, cult_3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits