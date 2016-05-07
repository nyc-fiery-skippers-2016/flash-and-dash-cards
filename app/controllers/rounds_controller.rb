post '/rounds' do
  @card = Card.find_by(id: params[:deck_id])

  @round = Round.create(deck_id: params[:deck_id], user_id: current_user.id)
   redirect "/rounds/#{@round.id}/cards/#{@card.id}"
end

