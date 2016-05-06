get '/cards/show' do
  @card = Card.find_by(id: params[:id])
  binding.pry
  erb :'cards/#{@card.id}'
end

