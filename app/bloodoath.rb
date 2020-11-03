class BloodOath

    attr_accessor :follower, :cult
    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @@all << self
    end

    def initiation_date
        
    end

    def self.all
        @@all
    end
end