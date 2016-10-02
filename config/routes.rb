Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#home"
  get '/train/:model/:class/:id', to: "site#show", as: :train

  # sessions => CALL THIS CUSTOM?
  # resources :sessions, only: [:destroy]
  # delete '/clear', to: "sessions#destroy"

  #css user download
  get '/user/download', to: "users#download",  as: :download

  #users
  post '/user', to: "users#create", as: :user_create
  get '/user/:cookie_id', to: "users#index", as: :user
  get '/user/:model/:class/:id', to: "users#show", as: :user_train  


  #stats pages
  get '/stats', to: "site#index"
  get '/h1/stats', to: "h1s#show"
  get '/h2/stats', to: "h2s#show"
  get '/h3/stats', to: "h3s#show"
  get '/h4/stats', to: "h4s#show"
  get '/h5/stats', to: "h5s#show"
  get '/button/stats', to: "buttons#show"
  get '/image/stats', to: "images#show"
  get '/listelement/stats', to: "listelements#show"
  get '/paragraph/stats', to: "paragraphs#show"
  get '/section/stats', to: "sections#show"
  get '/body/stats', to: "bodies#show"

  #Extracting CSS to DB
  post '/h1/:id', to: "h1s#create", as: :train_h1
  post '/h2/:id', to: "h2s#create", as: :train_h2
  post '/h3/:id', to: "h3s#create", as: :train_h3
  post '/h4/:id', to: "h4s#create", as: :train_h4
  post '/h5/:id', to: "h5s#create", as: :train_h5
  post '/button/:id', to: "buttons#create", as: :train_button
  post '/paragraph/:id', to: "paragraphs#create", as: :train_paragraph
  post '/image/:id', to: "images#create", as: :train_image
  post '/section/:id', to: "sections#create", as: :train_section
  post '/body/:id', to: "bodies#create", as: :train_body
  post '/li/:id', to: "listelements#create", as: :train_li
end
