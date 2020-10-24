class BestMovies::Movie

    @@all = []

    attr_accessor :name, :genre, :synopsis, :actor, :title
     
    attr_reader :director

    def initialize(name)
        @name = name
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