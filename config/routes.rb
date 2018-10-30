Rails.application.routes.draw do
	root to: 'statique#accueil'
	get 'users', to: 'users#new'
	post 'users', to: 'users#create'
	get 'users/:username', to: 'users#show'
end
