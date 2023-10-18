Rails.application.routes.draw do
  get '/blogs' => 'blog#index'
  
  get '/blogs/new' => 'blog#new'
  post '/blogs' => 'blog#create'

  get '/blogs/:id' => 'blog#show', as: 'show_blog'

  get '/blogs/:id/edit' => 'blog#edit'
  patch '/blogs/:id' => 'blog#update' 
  
  delete '/blogs/:id' => 'blog#destroy'

end
