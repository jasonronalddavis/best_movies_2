
#git add
#git add . add all files at one time, incrementaly [ush ]

class BestMovies::CLI



    #bash color codes
@@muted= "\e[1;31m"
@@grn= "\e[1;32m"
@@yllw= "\e[1;33m"
@@blu= "\e[1;34m"  
@@mag= "\e[1;35m"   
@@cyn= "\e[1;36m"
@@white= "\e[0m"



#def initialize
   #importer = BestMovies::Scraper
   #importer.scrape_movies
#end






    def call
    puts "\n#{@@grn}Welcome to your movie library!#{@@white}\n"
    #puts "Welcome to your movie library!"
    #puts "To list all of your movies, enter 'list movies'."
    #puts "To list all of the actors in your library, enter 'list actors'."
    #puts "To list all of the genres in your library, enter 'list genres'."
    #puts "To list all of the movies by a particular actor, enter 'list_actor'."
    #puts "To list all of the movies of a particular genre, enter 'list genre'."
    #puts "To quit, type 'exit'."
    #puts "What would you like to do?"
    #find_movie_tile
    #all_movie_titles
    #fnd_movie
    #find movie_by_actor
    #find_actor_by_movie
    #find_movie_by_genre
    #slef context
    #look for table or collection 
    #api that does not require authentication 
    get_movies
    list_movies
    get_user_movie
    #valid_input?(input, data)
    end


    def get_movies
        
        @movies = BestMovies::Movie.all
    #instance variable hoists data to a higher scope to accessed outside a method within a class/instance
    end


   def list_movies
   puts "\n#{@@mag}CHOOSE A MOVIE!#{@@white}\n"
      # puts "choose a movie"
    @movies.each.with_index(1) do |movie, index| 
        puts "#{index}. #{movie.name}"
        end
       #binding.pry
    end


   def get_user_movie
   # binding.pry
    input = gets.strip.to_i - 1
    movie = @movies[input] 
    BestMovies::Scraper.scrape_movie(movie)
   #if valid_input(input, @movies)
    puts "#{@@mag}#{movie.name}#{@@white}"
    puts "genre: #{movie.genre}."
    puts "synopsis: #{movie.synopsis}."
    puts "Actors: #{movie.actors}."
    get_user_movie

    #select_movie_for(input) if valid_input(input, @movies)
    #binding.pry
   end 




 

def valid_input(input, data)
    data = @movies
 input.to_i <= data.length && input.to_i > 0
end
end


#def list_movies_for(chosen_input)
#ovie = @movies[chosen_input - 1]
#puts "Listed are the best movies for 2019"
#binding.pry
#end


#def select_movie_for(input)
   # movie = @movies[input -1]
  #  puts "ranked at ##{input.to_i} is #{movie.name}"
   # binding.pry
  #  end
#end






#chosen_month.to_i <= chosen_input.length && 