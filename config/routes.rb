Rails.application.routes.draw do

  root 'static_pages#home' # static_pages_controller => method is home

  get '/friends', to: 'people#index' #static_pages_people => method is index
  get '/about', to: 'static_pages#about'

  resources :people, path: 'friends'

  # root "people#index" # need to set this as the root route 
  # resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
