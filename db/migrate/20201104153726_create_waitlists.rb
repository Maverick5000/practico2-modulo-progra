class CreateWaitlists < ActiveRecord::Migration[6.0]
  def change
    create_table :waitlists do |t|
      t.references :tape, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.boolean :notified, :default => false

      t.timestamps
    end
  end
end
