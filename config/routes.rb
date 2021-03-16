Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'articles/rank', to: 'articles#rank'
  resources :articles, only: [:index, :show] do
    resources :interactions, only: [:show, :new]
  end

get "account", to: "pages#account"

end
