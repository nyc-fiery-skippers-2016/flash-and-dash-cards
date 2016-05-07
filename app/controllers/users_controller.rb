get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect "/users/#{@user.id}"
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @deck = Deck.find_by(deck_id: params[:deck_id])
  binding.pry
  erb :'users/show'
end

post '/users/:id' do

  redirect "/users/#{user.id}"
end
