Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]

  root "welcome#show", as: 'home'

  get 'sessions/new', to: 'sessions#new'
  post 'sessions', to: 'sessions#create'
  get 'sessions/destroy', to: 'sessions#destroy'
end
