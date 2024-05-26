Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  get 'homes/about', to: 'homes#about', as: :about
  # get 'homes/top'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
