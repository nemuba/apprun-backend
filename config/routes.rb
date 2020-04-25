Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post 'user_token' => 'user_token#create'
      get 'current_user' => 'auth#current'
      get 'get_modalities' => 'option#get_modalities'
      get 'get_sponsors' => 'option#get_sponsors'
      get 'get_races' => 'option#get_races'
      get 'get_players' => 'option#get_players'
      resources :users
      resources :modalities
      resources :races
      resources :sponsors
      resources :players
    end
  end
end
