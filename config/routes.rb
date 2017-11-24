Rails.application.routes.draw do
  resources :statuses
  root 'home#index'
end
