get '/' do
  redirect '/login'
end

get '/login' do
  erb :"sessions/new"
end

post '/login' do
  error = ''
  user = User.authenticate(params[:email], params[:password])
 if user == false
   @error = "Invalid username and password combination. Please try again."
   erb :"sessions/new"
 else
   session[:user_id] = user.id
   redirect "/users/#{user.id}"
 end
end

post '/logout' do
  session.clear
  redirect '/'
end
