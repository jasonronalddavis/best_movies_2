class BestMovies::Director

    @@all = []

    attr_accessor :name
    
    attr_reader :movies

    def initialize(name)
        @movies = BestMovies::Scraper.scrape_movies
        @name = name
        save
    end



    def save
        @@all << self
    end


    def self.all 
        @@all
    end
end