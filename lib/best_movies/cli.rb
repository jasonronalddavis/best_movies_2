require "pry"
#git add
#git add . add all files at one time, incrementaly [ush ]

class BestMovies::CLI


    def call
    puts "\nBest movies this past year\n"
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
    get_user_input
    #valid_input?(input, data)
    end


    def get_movies
    @movies = ["the_matrix", "shrek", "district_9"]
    end


    def list_movies
        puts "chose a movie"
    @movies.each.with_index(1) do |movie, index| 
        puts "#{index}. #{movie}"
        end
    end

   def get_user_input 
    
    chosen_input = gets.strip
    binding.pry  
  # if valid_input(chosen_input, @movies) 
   #end

    
   end  



def valid_input(input, data)

 input.to_1 <= data.length && input.to_i > 0
end
end



#chosen_month.to_i <= chosen_input.length && 