Rails.application.routes.draw do
  # get 'events/index'
  # get 'events/new'
  # get 'events/show'
  # get 'events/edit'
  # get 'user_events/index'
  devise_for :users
  get "my_events", to: "user_events#index"
  
  resources :events do 
    resources :attendances
  end
  root "events#index"
end
