get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/my_page/:name' do
  # Look in app/views/index.erb
  @name = params[:name]
  erb :my_page
end