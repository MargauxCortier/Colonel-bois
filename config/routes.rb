Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'template#index'
get '/blog', to: 'template#blog'
get '/shop/filter', to: 'template#shop_filter'
get '/about', to: 'template#about'

end
