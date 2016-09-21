Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :new, :create]

  root 'articles#index'
end
