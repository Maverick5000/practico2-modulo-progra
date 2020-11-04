class CreateTapeGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :tape_genres do |t|
      t.references :tape, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
