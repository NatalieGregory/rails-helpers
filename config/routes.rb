Rails.application.routes.draw do

  root 'people#index'

  get '/people', to: 'people#index'

  get '/people/new', to: 'people#new'

  get '/people/:id', to: 'people#show'

  post '/people', to: 'people#create'

  get '/people/:id/edit', to: 'people#edit'

  put '/people/:id', to: 'people#update'

end
