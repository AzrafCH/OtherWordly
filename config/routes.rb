Rails.application.routes.draw do
  resources :moments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'moments#index'
end
