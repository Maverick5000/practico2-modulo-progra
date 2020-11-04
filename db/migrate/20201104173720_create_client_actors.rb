class CreateClientActors < ActiveRecord::Migration[6.0]
  def change
    create_table :client_actors do |t|
      t.references :client, null: false, foreign_key: true
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
