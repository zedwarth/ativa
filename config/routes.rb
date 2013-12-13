Ativa::Application.routes.draw do
  resources :projects do
    resources :posts, except: :index
  end

  get 'users/:id' => 'users#show', as: 'user'

  root 'projects#index'
end
