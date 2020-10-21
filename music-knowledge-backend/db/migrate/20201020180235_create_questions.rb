class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :game_id
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :name
      t.string :artist
      t.string :genre
      t.string :filename

      t.timestamps
    end
  end
end
