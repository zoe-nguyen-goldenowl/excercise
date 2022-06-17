Rails.application.routes.draw do
  resources :follows
  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unprocessable_entity'
  get '/500', to: 'errors#internal_server_error'

  root 'pages#home'
end
