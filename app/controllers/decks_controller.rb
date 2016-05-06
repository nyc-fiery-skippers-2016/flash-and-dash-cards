get '/' do
  redirect '/decks'
end

get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  # binding.pry
  erb :'decks/show'
end
