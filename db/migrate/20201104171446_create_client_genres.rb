class CreateClientGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :client_genres do |t|
      t.references :client, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
