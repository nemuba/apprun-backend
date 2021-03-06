Rails.application.routes.draw do

  root to:'api/v1/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post 'user_token' => 'user_token#create'
      get 'current_user' => 'auth#current'
      get 'get_modalities' => 'option#get_modalities'
      get 'get_sponsors' => 'option#get_sponsors'
      get 'get_races' => 'option#get_races'
      get 'get_players' => 'option#get_players'
      get 'get_positions' => 'option#get_positions'
      get 'get_total' => 'option#get_total'
      get 'get_race/:id/modalities' => 'option#get_race_modalities'
      resources :users
      resources :modalities
      resources :races
      resources :sponsors
      resources :players
      resources :registrations
      resources :positions
    end
  end
end
