class User < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

  has_many :guesses, through: :rounds
  has_many :rounds
end
