Rails.application.routes.draw do
  resources :notes
  resources :book_lists
  devise_for :users
  get 'pages/index'
  get 'learning', to:'pages#learning'
  resources :shares
  root 'pages#index'
  resources :questions
  resources :schedules

  post 'schedules/recieve', to: 'schedules#recieve'

end
