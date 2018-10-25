Rails.application.routes.draw do
  #root 'dashboard#show'

  get 'users/new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]

  resources :todo_lists do
   resources :todo_items do
    member do
     patch :complete
    end
  end
end

  root "todo_lists#index"

  resources :search, only: [:index, :show]
end
