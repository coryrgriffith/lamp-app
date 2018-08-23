Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  get '/lamps' => 'lamps#index'
  get '/lamps/new' => 'lamps#new'
  get '/lamps/:id' => 'lamps#show'
  post '/lamps' => 'lamps#create'
  get '/lamps/:id/edit' => 'lamps#edit'
  patch '/lamps/:id' => 'lamps#update' 
  delete '/lamps/:id' => 'lamps#destroy'
end
