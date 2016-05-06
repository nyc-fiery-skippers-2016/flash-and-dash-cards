class Guess < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :card
  belongs_to :round
  delegate :user, to: :round

  # def user # replaced by the "delegate" in line 5
  #   self.round.user
  # end
end
