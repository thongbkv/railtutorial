Rails.application.routes.draw do
  get 'sessions/new'

  get 'help' => 'static_pages#help'
  get 'about'=> 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :microposts
  resources :users
  resources :account_activations, only: [:edit]
  #root 'application#hello'
  root 'static_pages#home'
  #config.force_ssl = true
end
