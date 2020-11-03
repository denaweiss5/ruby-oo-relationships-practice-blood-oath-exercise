class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        my_oath = BloodOath.all.select do |oath| 
            oath.follower == self
        end
        my_cults = my_oath.map do |oath| 
            oath.cult 
        end
    end

    def join_cult(cult)
        joined = BloodOath.new(self, cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower| follower.age >= age
        end
    end

end