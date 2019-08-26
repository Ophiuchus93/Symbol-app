Rails.application.routes.draw do
  root "logos#index" 
  devise_for :users
  
  resources :logos
end
