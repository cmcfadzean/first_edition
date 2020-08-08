Rails.application.routes.draw do
  resources :books do
    member do
      put "like", to: "books#upvote"
    end
    resources :chapters
  end
  devise_for :users
  root 'books#index'
end
