Rails.application.routes.draw do
  resources :portfolios, except:[:show]
  get 'portfolio/:id', to: 'portfolios#show',as: 'portfolio_show'

  resources :blogs

  get 'About-Me', to: 'pages#About'
  get 'Contact', to: 'pages#Contact'
  get 'Home', to: 'pages#Home'



  root to: 'pages#Home'
end
