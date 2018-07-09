Rails.application.routes.draw do
  get '/homepage' => 'homepage#index'

  get '/songs' => 'songs#index'
  get '/songs/new' => 'songs#new'
  get '/songs/sort' => 'songs#sort'

  resources :songs

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
