Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update]
  get 'homes/about' => 'homes#about' , as: 'about'

end