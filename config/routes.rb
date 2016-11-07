Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#home'
  resources :books
  
  resources :publisher_houses
  resources :authors
end
