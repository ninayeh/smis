Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users

  get 'pages/index'
  get 'learning', to:'pages#learning'

  resources :notes
  resources :book_lists
  resources :schedules
  post 'schedules/recieve', to: 'schedules#recieve'
  resources :users, only: [:show, :edit, :update]

  # 沒有使用到的
  resources :shares
  resources :questions

  namespace :backend do

  end
end
