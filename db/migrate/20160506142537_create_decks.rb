class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |col|
      col.string :title, null: false

      col.timestamps null: false
    end
  end
end
