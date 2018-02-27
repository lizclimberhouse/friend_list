Rails.application.routes.draw do

  resources :people

  root "people#index" # need to set this as the root route 
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
