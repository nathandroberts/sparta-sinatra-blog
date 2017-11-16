class BlogController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  

  get '/' do
    'hello user.'
  end
  get '/blog' do
    'This is a blog'
  end
  get '/blog/new' do
    'this is a new blog entry'
  end
  post '/blog' do
    'post blog entry'
  end

  get '/blog/:id' do
    id = params[:id]
    "SHOW blog #{id}"
  end
  get '/blog/:id/edit' do
    "edit blog id #{params[:id]}"
  end
  put '/blog/:id' do
    "update blog id#{params[:id]}"
  end
  delete '/blog/:id' do
    "delete blog id #{params[:id]}"
  end
end
