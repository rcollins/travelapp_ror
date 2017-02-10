Rails.application.routes.draw do
  
  root to:'pages#home'
  get 'info', to: 'pages#info'
  resources :vendors
  
end
