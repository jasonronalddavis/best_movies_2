class BestMovies::Scraper

    attr_accessor :movie, :genre, :key






    def self.scrape_movies
        @doc = Nokogiri::HTML(open("https://editorial.rottentomatoes.com/guide/best-movies-of-2019/"))
        @doc.search("div.countdown-item").each do |movie_attr|
           movie = BestMovies::Movie.new(name)
           a_tag = movie_attr.search("div.info.synopsis a")
            if a_tag
           movie.synopsis = a_tag.attr("href")
          
           scrape = movie_attr.css("a")[0].attributes["href"].value 
           site_2 = Nokogiri::HTML(open(scrape)) 
           movie.synopsis = site_2.css("#movieSynopsis").text.strip
           binding.pry
           movie.title = movie_attr.search("div.article_movie_title a").text 
           movie.actor = movie_attr.search("div.cast a").text 
           
           
            end   
             
        end
    end
end

    #<div id="movieSynopsis" class="movie_synopsis clamp clamp-6 js-clamp" style="clear:both">
                #In small-town Alabama, Zeke and Earl scramble to cover up the unlikely and illegal events that led to their friend's death while trying to dodge their families, the cops and one horrified medical examiner.
            #</div>
