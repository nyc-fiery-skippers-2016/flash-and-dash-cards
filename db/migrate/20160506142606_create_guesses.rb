class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |col|
      col.string :response
      col.references :round, foreign_key: true, index: true
      col.references :card, foreign_key: true, index: true

      col.timestamps null: false
    end
  end
end
