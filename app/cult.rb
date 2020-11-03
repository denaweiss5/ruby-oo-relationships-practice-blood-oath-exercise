class Cult

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def recruit_follower(follower)
        new_follower = BloodOath.new(follower, self)
    end

    def cult_population
        my_bloodoaths = BloodOath.all.select do|bloodoath| bloodoath.cult == self
        end
        my_followers = my_bloodoaths.map do |bloodoath| bloodoath.follower
        end
        my_followers.count 
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end
    end
end