get '/cards' do
  @cards = Card.all

  erb :'cards/index'
end


get '/rounds/:id/cards/:id' do
  @card = Card.find_by(deck_id: params[:deck_id])

  erb :'cards/show'
end

