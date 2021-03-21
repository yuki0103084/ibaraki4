Rails.application.routes.draw do
  devise_for :users
  post '/home/guest_sign_in', to: 'home#new_guest'
  root to: "home#index"
  resources :users
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  resources :articles do
  resources :comments, only: [:create, :destroy]
  end
  get '/article/category', to: "articles#category"

end
