Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'

  get '/random_joke',     to: 'joke#random_joke'
  get '/jokes',           to: 'joke#jokes'
end
