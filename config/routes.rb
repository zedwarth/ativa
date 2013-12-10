Ativa::Application.routes.draw do
  root 'projects#index'

  resources :posts
  resources :projects

  get 'users/:id' => 'users#show', as: 'user'
end
