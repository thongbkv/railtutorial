Rails.application.routes.draw do
  get 'help' => 'static_pages#help'
  get 'about'=> 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'

  resources :microposts
  resources :users
  #root 'application#hello'
  root 'static_pages#home'
  config.force_ssl = true
end
