class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, limit: 80
      t.integer :age
      t.string :gender
      t.text :adress

      t.timestamps null: false
    end
  end
end
