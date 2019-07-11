Rails.application.routes.draw do

  root to: 'pages#home'
  get 'tables(/:vip)', to: 'tables#index', as: 'tables'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
