Rails.application.routes.draw do
  namespace :backend do
  get 'dashboard/index'
  end

  root 'pages#index'
  # devise_for :users, controllers: { sessions: "users/sessions" }
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'pages/index'
  get 'about', to:'pages#about'
  get 'learning', to:'pages#learning'
  get 'resouece', to:'pages#resouece'


  resources :notes
  resources :book_lists
  resources :schedules
  post 'schedules/recieve', to: 'schedules#recieve'
  resources :users, only: [:show, :edit, :update]
  resources :missions, only: [:show, :edit, :update, :destroy]
  resources :laboratories,only: [:index, :show]

  # 沒有使用到的
  resources :shares
  resources :questions

  namespace :backend do
    get 'dashboard', to: 'dashboard#index'
    resources :departments, skip: [:show]
    resources :laboratories
    resources :users
  end
end
