Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#dashboard'
  get :push, to: 'pushes#push'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
