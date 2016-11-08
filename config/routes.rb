Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
  resources :books
   get  '/covers' => 'books#cover'
  resources :publisher_houses
  resources :authors
end
