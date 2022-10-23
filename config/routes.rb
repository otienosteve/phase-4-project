Rails.application.routes.draw do
  
  resources :resumes
  resources :candidates
  resources :companies
  resources :job_posts
  resources :jobs
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
