Rails.application.routes.draw do
  root to: 'pages#home'

  get '/tables', to: 'pages#tables'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
