Rails.application.routes.draw do
  get 'users/show'
  resources :posts
  devise_for :users
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
end