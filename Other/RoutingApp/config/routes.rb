Rails.application.routes.draw do
  namespace :admin do
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact', as: 'lead'
  
  get 'posts/*missing', to: 'posts#missing'

  resources :blogs
  resources :posts
  
  get 'posts/*missing', to: 'posts#missing'
  
  get 'query/:else', to: 'pages#something'
  
  root to: 'pages#home'
end
