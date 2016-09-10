Rails.application.routes.draw do
	root 'pictures#index'
	get '/users/:id', to: 'users#show', as: 'home'
	
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
