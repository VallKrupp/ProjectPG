Rails.application.routes.draw do
  
  get 'answers/new'
  get 'answers/edit'
  devise_for :users, controllers: { omniauth_callbacks:'users/omniauth_callbacks' }
  root 'static_pages#landing_page'
  
  resources :users, only: %i[index show destroy]
  resources :tasks
  resources :answers
end
