Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks:'users/omniauth_callbacks' }
  root 'static_pages#landing_page'
  
  resources :users, only: %i[index show]
  resources :tasks
  resources :answers
end
