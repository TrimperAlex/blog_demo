Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :posts
  get 'about', to: 'pages#about'
end
