Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "site#home"
  get '/data', to: "site#dataget"
  get '/show', to: "site#show"

  post '/data', to: "site#data"

end
