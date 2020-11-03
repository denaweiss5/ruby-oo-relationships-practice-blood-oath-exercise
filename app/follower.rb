class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def cults
        my_bloodaoths = BloodOath.all.select {|oath| oath.follower == self}
    end
    my_bloodaoths.map do |bloodaoth| bloodoath.cult 
    end

    def join_cult(cult)
        joined = BloodOath.new(self, cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select |follower| follower.age == age
    end

end