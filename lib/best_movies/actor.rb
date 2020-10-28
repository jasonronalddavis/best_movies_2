class BestMovies::Director

    @@all = []

    attr_accessor :name
    
    attr_reader :movie

    def initialize(name, movie)
        @movie = BestMovies::Scraper.scrape_movies
        @name = name
        @movie.add_character(self)
    end



    def save
        @@all << self
    end


    def self.all 
        @@all
    end
end


jaws = Movie.new("The Matrix")
charcter = ("BestMovies::Director)


