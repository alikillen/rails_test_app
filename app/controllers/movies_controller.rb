class MoviesController < ApplicationController

  #need 4 methods - index, new, create show - matches routes

  # usually need a html form for each get route - so in this case 3

  def index
   # list all movies from the session variable
   @movies = session[:movies]




   # render "movies/index" #rails will render this by default anyway
  end

  def new
  end


  def create
    puts "-----------------"
    puts params
    if session[:movies] == nil
      session[:movies] = []
    end
    session[:movies].push(params[:movie])
    #redirect to the show html page
    redirect_to movie_path(session[:movies].length)
    # pass dynamic route with parentheses
  end

  def show
   # session[:movies] = ["Avengers", "Avatar"]
    #if i want to show only Avengers
    @movie = session[:movies][params[:id].to_i - 1]
    puts "-------show method"
    puts @movie
    ################## need to fix this bit!
  end



end
