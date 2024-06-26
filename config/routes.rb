Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  get 'home/about', to: 'homes#about', as: :about
  root to: 'homes#top'
  get 'search', to: 'searches#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
