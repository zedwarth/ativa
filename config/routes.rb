Ativa::Application.routes.draw do

  devise_for :users
  resources :posts

  resources :posts
  resources :projects

  get 'users/:id' => 'users#show', as: 'user'

  root 'projects#index'
end
