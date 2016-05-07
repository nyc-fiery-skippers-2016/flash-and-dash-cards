class Card < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :deck
  has_many :guesses

  def current_deck
  	self.deck_id
  end 

  def move_to_next_card
  	if self.deck_id == self.current_deck
  		self.id + 1
  	end
  end

end
