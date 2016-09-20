Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: "site#index"
  # get '/home', to: "site#home"
  # get '/data', to: "site#dataget"
  # get '/show', to: "site#show"
  # get '/random', to: "site#random"
  # post '/data', to: "site#data"

  root "site#index"
  get '/home', to: "site#home"
  get '/train/:component/:id', to: "site#show", as: :train
  post '/train/h1/:id', to: "h1s#create", as: :train_h1

end
