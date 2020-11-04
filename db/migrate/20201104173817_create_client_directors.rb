class CreateClientDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :client_directors do |t|
      t.references :client, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
