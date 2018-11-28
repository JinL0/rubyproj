Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  root to: "posts#index"
  patch "/posts/:id/like", to: "posts#like", as: "like"
  patch "/posts/:id/dislike", to: "posts#dislike", as: "dislike"
  patch "/posts/:id/comment", to: "posts#comment", as: "comment"
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end