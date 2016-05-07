helpers do
  def last_guess
    @last_guess = Guess.last
  end

  def incorrect
    @round.guesses.last.response != @card.answer
  end
end