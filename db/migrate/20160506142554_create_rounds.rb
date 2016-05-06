class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |col|
      col.references :deck, foreign_key: true, index: true
      col.references :user, foreign_key: true, index: true

      col.timestamps null:false
    end
  end
end
