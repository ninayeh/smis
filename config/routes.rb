Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  resources :shares
  root 'pages#index'
  resources :questions
  resources :schedules

  post 'schedules/recieve', to: 'schedules#recieve'

end
