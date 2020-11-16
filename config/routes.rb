Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root  'tops#index'
  resources :lists, only: [:new, :create, :edit, :update, :destroy] do
    resources :cards, except: [:index] 
  end 
end
