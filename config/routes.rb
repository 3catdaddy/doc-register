Rails.application.routes.draw do
  root 'home#index'
  resources :uploads do
    member do
      delete :delete_file_attachment
    end
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end