#ENVIRONMENT FILE



require "pry"
require "nokogiri"
require "open-uri"

module BestMovies

    require_relative "./best_movies/version"
    require_relative "./best_movies/cli"
    require_relative "./best_movies/movie.rb"
    require_relative "./best_movies/scraper.rb"
    
end

