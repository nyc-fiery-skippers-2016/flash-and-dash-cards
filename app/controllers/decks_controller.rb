get '/' do
  redirect '/decks'
end

get '/decks' do
  @deck = Deck.all
  erb :'decks/index'
end

