Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index' #leftover from test

  #this is the html forms lesson

  #get all the movies
  get "/movies", to:"movies#index", as:"movies"
  #create a new movie
  # prefix is inherited by post route IF the url matches
  # when we use :resource it makes more sense
  post "/movies", to:"movies#create"
  #get a movie form page
  get "/movies/new", to:"movies#new", as:"new_movie"
  #show a single movie
  get "/movies/:id", to:"movies#show", as:"movie"


end
