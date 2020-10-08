


class BestMovies::CLI


    def call
    puts "Best movies this past year"
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
    end


    def get_movies
    @movies = ["the_matrix", "shrek", "district_9"]
    end


    def list_movies
    @movies.each_with_index{|movie, index| puts "#{index+1}. #{movie}"}
    end
end