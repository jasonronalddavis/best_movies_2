class BestMovies::Scraper



    def self.scrape_movies
        @doc = Nokogiri::HTML(open("https://editorial.rottentomatoes.com/guide/best-movies-of-2019/"))
        @doc.search("div.countdown-item").each do |movie_attr|
            

            
           movie = BestMovies::Movie.new
           movie.link = movie_attr.css(".article_movie_title a").attribute("href").value
           movie.play_trailer = movie_attr.css(".article_movie_title a").attribute("href").text
           #binding.pry
           movie.name = movie_attr.search("div.article_movie_title a").text 
           movie.actors = movie_attr.search("div.cast a").text.split.join(", ")
           #self.scrape_synopsis(movie) 
           #self.scrape_genre(movie)
           #@@all << self
            end   
               
        end


def self.scrape_details(movie)   
    doc = Nokogiri::HTML(open(movie.link))
    movie.synopsis = doc.css("#movieSynopsis").text.strip
    movie.genre = doc.css("div.meta-value.genre").text.gsub(/\s+/, " ").strip
   # @@all << self
end
end
    

    #<div id="movieSynopsis" class="movie_synopsis clamp clamp-6 js-clamp" style="clear:both">
                #In small-town Alabama, Zeke and Earl scramble to cover up the unlikely and illegal events that led to their friend's death while trying to dodge their families, the cops and one horrified medical examiner.
            #</div>
