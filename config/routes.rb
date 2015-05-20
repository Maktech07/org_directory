Rails.application.routes.draw do
  get 'statics/home'

  get 'statics/help'

  get 'statics/about'

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
