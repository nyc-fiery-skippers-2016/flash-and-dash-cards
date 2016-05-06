class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |col|
      col.string :question, null: false
      col.string :answer, null: false
      col.references :deck, foreign_key: true, index: true

      col.timestamps null: false
    end
  end
end
