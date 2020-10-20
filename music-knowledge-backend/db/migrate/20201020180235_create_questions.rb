class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :game_id
      t.string :correct
      t.string :fake1
      t.string :fake2
      t.string :fake3
      t.string :name
      t.string :artist
      t.string :genre
      t.string :filename

      t.timestamps
    end
  end
end
