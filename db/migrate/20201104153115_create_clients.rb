class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :code
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
