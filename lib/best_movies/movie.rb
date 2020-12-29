class BestMovies::Movie

    @@all = []
    attr_accessor :name, :genre, :synopsis, :link, :actors, :play_trailer, :director
     

    def initialize
        @name = name
        @actors = []
        @genre = genre
        self.save
    end



    def save

        @@all << self
    end


    def self.all   
       BestMovies::Scraper.scrape_movies if @@all.empty?
        @@all
 # binding.pry
        
    end
end