VideoStorageApp::Application.routes.draw do

get '/videos', :controller => 'Video', :action => 'index'
post '/videos', :controller => 'Video', :action => 'create'
get '/new', :controller => 'Video', :action => 'new'

get '/videos/:id', :controller => 'Video', :action => 'show'
delete 'videos/:id', :controller => 'Video', :action => 'destroy'
put '/videos/:id', :controller => 'Video', :action => 'update'
get '/videos/:id/edit', :controller =>'Video', :action => 'edit'

end
