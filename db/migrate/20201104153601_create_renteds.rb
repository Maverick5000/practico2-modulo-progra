class CreateRenteds < ActiveRecord::Migration[6.0]
  def change
    create_table :renteds do |t|
      t.references :tape, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
