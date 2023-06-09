Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index, :create, :index, :show, :destroy, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update]
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
end
