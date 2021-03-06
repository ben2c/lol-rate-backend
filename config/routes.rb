Rails.application.routes.draw do

  post "api/v1/login", to: "api/v1/sessions#create"
  get "api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  delete "api/v1/logout", to: "api/v1/sessions#destroy"
  post "/api/v1/signup", to: "api/v1/users#create"

  
  namespace :api do 
    namespace :v1 do 
      
      resources :champions do 
        resources :users
      end 

      resources :users do 
        resources :champions 
      end 
       
      resources :champion_ownerships

    end 
  end 
 end