get '/login' do
  erb :'login'
end

post '/login' do
  @user = User.find_by(name: params[:user][:name])

  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{user.id}"
  else
    halt(403, "invalid username or password")
    erb :'login'
  end
end

get '/logout' do
  session.clear
  redirect '/decks/show'
end
