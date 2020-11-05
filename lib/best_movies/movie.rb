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

    def self.save_to_playlist
        @@playlist << self
    end

    def playlist
        @@playlist
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