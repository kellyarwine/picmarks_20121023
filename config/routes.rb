#THIS IS MINE!  THIS IS MINE!  THIS IS MINE!  THIS IS MINE!  THIS IS MINE!  THIS IS MINE!

KellyPicmarks::Application.routes.draw do
  get "/pictures" => "pictures#index", :as => :all_pictures
  
  get "/pictures/:id" => "pictures#show", :as => :single_picture

  # get '/pictures/new' => "pictures#new", :as => :new_picture

  get '/pictures/new', :controller=>'pictures', :action=>'new'
  post "/pictures" => "pictures#create"

  # get "/pictures/:id" => "pictures#show", :as => :single_picture

end
