Rails.application.routes.draw do
  resources :photos
  root to: 'pages#home'
end
