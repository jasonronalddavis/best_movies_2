
#git add
#git add . add all files at one time, incrementaly [ush ]

class BestMovies::CLI



    #bash color codes
@@muted = "\e[1;31m"
@@grn = "\e[1;32m"
@@yllw = "\e[1;33m"
@@blu = "\e[1;34m"  
@@mag = "\e[1;35m"   
@@cyn = "\e[1;36m"
@@white = "\e[0m"
@@red = "\e[0;31m"
@@gray = "\e[0;37m"
@@orange = "\e[0;33m"


#def initialize
   #importer = BestMovies::Scraper
   #importer.scrape_movies
#end




    def call
        puts ""
        puts ""
        puts "#{@@yllw}      ***********#{@@red}************* "
        puts "#{@@red}     |                  #{@@grn}      |"
        puts "#{@@cyn}     |#{@@white}     WELCOME!#{@@blu}           |"
        puts "#{@@grn}     |                  #{@@yllw}      |"
        puts "#{@@orange}      ***********#{@@mag}*************"
        puts ""
        puts ""        
    get_movies
    list_movies
    get_user_movie 
    end

    def get_movies     
        @movies = BestMovies::Movie.all
       # binding.pry
    #instance variable hoists data to a higher scope to accessed outside a method within a class/instance
    end



   def list_movies
   puts "\n#{@@mag}CHOOSE A MOVIE!#{@@white}\n"
      # puts "choose a movie"
    @movies.each.with_index(1) do |mov, index| 
        mov.genre = 
        puts "#{index}. #{mov.name}#{@@white}"
        end
      # binding.pry
    end


   def get_user_movie(input = nil)
    if input == nil
    menu
   # binding.pry
    elsif valid_input(input, @movies)
    movie = @movies[input] 
    BestMovies::Scraper.scrape_details(movie)
    puts "#{@@mag}#{movie.name}#{@@white}"
    puts "#{@@yllw}Director: #{movie.director}#{@@white}"
    puts "#{@@blu}genre: #{movie.genre}#{@@white}"
    puts "synopsis: #{movie.synopsis}"
    puts "#{@@cyn}Actors: #{movie.actors}.#{@@white}"
    puts "#{@@grn}PLAY TRAILER? #{movie.play_trailer}#{@@white}"
    puts "#{@@red}exit app?(exit)#{@@white}"
    puts "input #{@@mag}'list'#{@@white} to list movies." 
    menu
    
    #see the list of movies again
    #exit_app if input == "e
    #binding.pry
   #end 
    end
    end




#save input steps for menu/get_movie

    def menu
        input = gets.strip
    if input == "list"
        list_movies
        get_user_movie
    elsif input == "exit"
    exit
    elsif valid_input(input, @movies)
        get_user_movie(input.to_i - 1)
    else 
        puts "input invalid, please enter another"  
        menu

        end
    end


    #exit 
    #see list again
    #pick movie


    def valid_input(input, data)
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