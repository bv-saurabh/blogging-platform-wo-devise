Rails.application.routes.draw do
	get 'welcome/index'
	root 'welcome#index'

	get '/login' => 'users#new_login'
	post '/login' => 'users#create_login'
	get '/logout' => 'users#logout'

	get '/signup' => 'users#new_user'
	post '/users' => 'users#create_user'

	resources :articles
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
