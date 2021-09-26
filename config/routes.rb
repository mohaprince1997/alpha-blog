Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users,except: [:new]
<<<<<<< HEAD
  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'
=======
>>>>>>> 3a65a2caa78167627b22f3ab7fd2920043a7921f
end
