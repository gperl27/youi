Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#index"
  
  get '/home', to: "site#home"
  # get '/indv/:model', to: "site#indv", as: :indv
  get '/train/:model/:class/:id', to: "site#show", as: :train


  post '/train/h1/:id', to: "h1s#create", as: :train_h1
  post '/train/h2/:id', to: "h2s#create", as: :train_h2
  post '/train/h3/:id', to: "h3s#create", as: :train_h3
  post '/train/h4/:id', to: "h4s#create", as: :train_h4
  post '/train/h5/:id', to: "h5s#create", as: :train_h5
  post '/train/button/:id', to: "buttons#create", as: :train_button
  post '/train/paragraph/:id', to: "paragraphs#create", as: :train_paragraph
  post '/train/image/:id', to: "images#create", as: :train_image
  post '/train/section/:id', to: "sections#create", as: :train_section
  post '/train/body/:id', to: "bodies#create", as: :train_body
end
