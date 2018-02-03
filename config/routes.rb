Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  get 'About-Me', to: 'pages#About'
  get 'Contact', to: 'pages#Contact'



  root to: 'pages#Home'
end
