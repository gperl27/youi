Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#index"
  get '/home', to: "site#home"
  get '/train/:model/:class/:id', to: "site#show", as: :train
  post '/train/h1/:id', to: "h1s#create", as: :train_h1
end
