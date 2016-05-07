get '/login' do
  erb :'sessions/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    halt(403, "invalid username or password")
    erb :'sessions/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
