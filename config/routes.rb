Rails.application.routes.draw do

  root 'people#index'

  get '/people', to: 'people#index'

  get '/people/new', to: 'people#new'

  get '/people/:id', to: 'people#show'

  post '/people', to: 'people#create'

end
