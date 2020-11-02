class BestMovies::Movie

    @@all = []

    attr_accessor :name, :genre, :synopsis, :link, :actors
     
    attr_reader :director

    def initialize
        @name = name
        @actors = []
        save
    end



    def save
        @@all << self
    end

    



    def self.all 
        BestMovies::Scraper.scrape_movies
        @@all
        
    end
end