get '/cards' do
  @cards = Card.all

  erb :'cards/index'
end

post '/rounds/:id/cards' do
	@card = Card.find_by(id: params[:card_id])
	
	@guess = Guess.create(response: params[:response], round_id: params[:id], card_id: params[:card_id])

	redirect "/rounds/#{ @guess.round_id }/cards/#{ @card.id }"
end

get '/rounds/:id/cards/:id' do
  @card = Card.find_by(id: params[:id])
  @round = Round.find_by(id: params[:captures][0])

  erb :'cards/show'
end



