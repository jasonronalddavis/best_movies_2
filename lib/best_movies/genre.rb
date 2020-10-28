class BestMovies::Movie

    @@all = []

    attr_accessor :name, :movie
    
    attr_reader :director

    def initialize(name)
        @name = name
        save
    end


    def save
        @@all << self
    end

    



    def self.all 
        BestMovies::Scraper.all
    end
end