class CreateTapeActors < ActiveRecord::Migration[6.0]
  def change
    create_table :tape_actors do |t|
      t.references :tape, null: false, foreign_key: true
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
