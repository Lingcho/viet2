Rails.application.routes.draw do

  get 'cuisine', to: 'tables#cuisine', as: 'cuisine'


  root to: 'pages#home'
  resources :tables do
    resources :tickets

  end
  resources :articles
  resources :tickets



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
