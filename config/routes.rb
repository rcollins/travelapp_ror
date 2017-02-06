Rails.application.routes.draw do
  
  root to:'pages#home'
  get 'vendors', to: 'pages#vendors'
  
end
