class CreateTapes < ActiveRecord::Migration[6.0]
  def change
    create_table :tapes do |t|
      t.string :name
      t.string :code
      t.boolean :available, :default => true
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
