Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		get '/', to: 'template#index'
		post '/', to: 'template#call_to_action'
		get '/shop', to: 'template#shop_full'
		get '/about', to: 'template#about'
		get '/single/:id', to: 'template#showproduct'
		get '/single', to: 'template#showproduct'
		get '/item', to: 'template#itemtest'
		get '/show/:id', to: 'template#show_test', as: 'show'
		get '/sooory', to: 'template#404'
		get '/users/:id', to: 'users#show'
end
