Rails.application.routes.draw do
  
  patch '/trainers/:id/damage', to: 'pokemons#damage', as: 'damage'
  patch '/pokemons/:id/capture', to:'pokemons#capture', as:'capture'
  get '/pokemons/new', to: 'pokemons#new', as: 'new_pokemon'
  post 'pokemons/create', to: 'pokemons#create', as: 'create'

  root to: 'home#index'
  devise_for :trainers
  resources :trainers
end
