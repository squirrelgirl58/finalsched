Rails.application.routes.draw do

  get 'login' => 'login#index', as: :login
  post 'login' => 'login#authenticate', as: :authenticate
  get 'logout' => 'login#logout', as: :logout
  get '/' => 'home#index', as: :home
  root 'home#index'

  resources :registrations
  resources :professors
  resources :students
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
