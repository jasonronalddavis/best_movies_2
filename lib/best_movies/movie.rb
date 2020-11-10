class BestMovies::Movie

    @@all = []
    @@playlist = []
    attr_accessor :name, :genre, :synopsis, :link, :actors, :play_trailer
     
    attr_reader :director

    def initialize
        @name = name
        @actors = []
        @genre = genre
        save
    end


    def save

        @@all << self
    end


    def self.all   
       BestMovies::Scraper.scrape_movies
        @@all
 # binding.pry
        
end
end