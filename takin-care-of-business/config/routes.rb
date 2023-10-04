Rails.application.routes.draw do
  get '/blogs' => 'blog#index'
  get '/blogs/new' => 'blog#new'
  get '/blogs/:id' => 'blog#show'
  post '/blogs' => 'blog#create'
  delete '/blogs/:id' => 'blog#destroy'
end
