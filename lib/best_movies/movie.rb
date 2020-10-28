class BestMovies::Movie

    @@all = []

    attr_accessor :name, :genre, :synopsis, :actor, :title, :link
     
    attr_reader :director

    def initialize(name)
        @name = name
        @actors = []
        save
    end


    def add_actor(actor)
        @actor << actor
    end



    def save
        @@all << self
    end

    



    def self.all 
        BestMovies::Scraper.scrape_movies
        @@all
        
    end
end