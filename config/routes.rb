Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  resources :shares
  root 'pages#index'
  resources :questions

end
