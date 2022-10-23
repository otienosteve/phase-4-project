Rails.application.routes.draw do
  
  resources :resumes ,only: [:show, :index, :create, :update]
  resources :candidates ,only:  [:show, :index, :create, :update]
  resources :companies,only:  [:show, :index, :create,:update]
  resources :job_posts ,only: [:show, :index, :create, :update]
  post '/newuser', to: "users#create"
  get '/getuser', to: "users#show"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/whois', to: "sessions#show"


  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
