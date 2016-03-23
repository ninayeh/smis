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


  resources :notes
  resources :note_comments
  # resources :book_lists
  resources :schedules do
    member do
      post 'clean' , to: 'schedules#clean'
    end
  end
  post 'schedules/recieve', to: 'schedules#recieve'
  resources :users, only: [:index, :show] do
    member do
      get 'save', to: 'users#save'
    end
  end
  resources :missions, skip: [:index]
  resources :laboratories,only: [:index, :show]
  resources :theses
  resources :resources,only:[:index, :show, :new, :create]

  resources :redactor_images, only: :create

  # 沒有使用到的
  resources :shares
  resources :questions

  namespace :backend do
    get 'dashboard', to: 'dashboard#index'
    resources :departments, skip: [:show]
    resources :laboratories
    resources :users
    resources :resources
  end
end
