Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  root to: 'pages#dashboard'
  get :push, to: 'pushes#push'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
