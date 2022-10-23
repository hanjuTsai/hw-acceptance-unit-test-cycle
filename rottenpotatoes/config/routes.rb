Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'find_movies_with_same_director/(:title)' => 'movies#movie_with_same_director', as: :find_movies_with_same_director
end
