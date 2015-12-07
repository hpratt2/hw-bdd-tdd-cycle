Rottenpotatoes::Application.routes.draw do
  resources :movies do
    get 'similar', to: 'movies#similar'
  end
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/:id/similar' => 'movies#similar'
end
