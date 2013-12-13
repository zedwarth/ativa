Ativa::Application.routes.draw do
  devise_for :users

  resources :projects do
    resources :posts, except: :index
  end

  get 'users/:id' => 'users#show', as: 'user'

  root 'projects#index'
end
