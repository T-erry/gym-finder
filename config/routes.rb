Rails.application.routes.draw do
      resources :gyms
      resources :admins, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'admins#profile'
end
