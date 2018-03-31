Rails.application.routes.draw do
  resources :portfolios, except: [:show]
get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'About-My-Site', to: 'pages#about'
  get 'Contact', to: 'pages#contact'

  resources :blog_tests do
  	member do 
   	 get :toggle_status
	end
end
 
	root to: 'pages#home'
end






 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
