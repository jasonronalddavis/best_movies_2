#ENVIRONMENT FILE


require_relative "./best_movies/version"
require_relative "./best_movies/cli"
require_relative "./best_movies/movie.rb"
require_relative "./best_movies/scraper.rb"


require "pry"
require "nokogiri"
require "open-uri"

module BestMovies
    class Error < StandardError; end
    # 
end

