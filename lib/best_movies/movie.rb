class BestMovies::Movie

    @@all = []
    attr_accessor :name, :genre, :synopsis, :link, :actors, :play_trailer, :director
     

    def initialize
        @name = name
        @actors = []
        @genre = genre
        save
    end




    def genre=(genre)
        @genre = genre 
    end

    def genre
        @genre
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