helpers do
  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

    def first_card_guesses
    self.guesses.select(:card_id).map(&:card_id).uniq.length
  end
end
