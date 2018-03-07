Rails.application.routes.draw do

  # Display all posts
  get '/home' => 'pages#home'
  root 'pages#home'
  # Show specific post
  get '/post/:id' => 'pages#show'
   # New post
  get '/createpost' => 'pages#new'
  post '/createpost' => 'pages#create'
  # Edit post
  get '/post/:id/edit' => 'pages#edit', as: :edit_post
  post '/post/:id' => 'pages#update', as: :update_post
  # Delete post
  delete '/post/:id' => 'pages#destroy', as: :delete_post


  # Comment section
  get '/post/:id/create_comment' => 'pages#new_comment'
  post '/post/:id/create_comment' => 'pages#create_comment', as: :create_comment


  # Sign up pages
  get '/signup'  => 'users#new'
  resources :users
  # User page
  get '/user' => 'users#info'
  # Show all posts by a specific user
  get '/posts/user/:id' => 'users#allposts', as: :all_posts
  

  # Login pages
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  # Reset pages
  get 'reset_password' => 'pages#reset_password'
  # New post
  get 'createpost' => 'pages#new'
  post 'createpost' => 'pages#create'

end