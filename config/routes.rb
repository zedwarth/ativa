Ativa::Application.routes.draw do
  devise_for :users
  root 'projects#index'

  resources :posts
  resources :projects

  get 'users/:id' => 'users#show', as: 'user'
end
