Rails.application.routes.draw do
  devise_for :users
  scope "/admin" do
	  resources :users
	end
  resources :statuses
  resources :resolutions
  resources :flows
  

	devise_scope :user do
	  authenticated :user do
	    root 'home#index', as: :authenticated_root
	  end

	  unauthenticated do
	    root 'devise/sessions#new', as: :unauthenticated_root
	  end
	end

end
