Rails.application.routes.draw do
  root "pages#home"
  resources :posts
  get 'about', to: 'pages#about'
end
