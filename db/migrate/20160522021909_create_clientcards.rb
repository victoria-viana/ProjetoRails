class CreateClientcards < ActiveRecord::Migration
  def change
    create_table :clientcards do |t|
        t.string :name
        t.string :exercise
        t.text :howtodo
        t.string :frequency
        t.string :coach

      t.timestamps null: false
    end
  end
end
