Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'articles/rank', to: 'articles#rank'
  resources :articles, only: [:index, :show] do
    resources :interactions, only: [:show]
    get "like", to: "interactions#like", as: "interactions_like"
    get "read", to: "interactions#read", as: "interactions_read"
    get "read_later", to: "interactions#read_later", as: "interactions_read_later"
  end

  get "account", to: "pages#account"
  get "filter", to: "pages#filter", as: "filter_articles"


end
