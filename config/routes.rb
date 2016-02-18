Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users, controllers: { sessions: "users/sessions" }

  get 'pages/index'
  get 'learning', to:'pages#learning'

  resources :notes
  resources :book_lists
  resources :schedules
  post 'schedules/recieve', to: 'schedules#recieve'
  resources :users, only: [:show, :edit, :update]
  resources :missions, only: [:show, :edit, :update, :destroy]

  # 沒有使用到的
  resources :shares
  resources :questions

  namespace :backend do
    resources :departments, skip: [:show]
    resources :laboratories
    resources :users
  end
end
