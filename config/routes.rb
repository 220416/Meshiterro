Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  get 'about' => 'homes#about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, onlu: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
