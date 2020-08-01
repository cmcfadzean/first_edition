Rails.application.routes.draw do
  resources :books do
    resources :chapters
  end
  devise_for :users
  root 'books#new'
end
