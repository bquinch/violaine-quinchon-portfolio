Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  resources :messages, only: :create
  resources :experiences, only: %i[index new create edit update destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
