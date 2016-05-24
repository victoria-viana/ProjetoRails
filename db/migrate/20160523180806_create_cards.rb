class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :exercise
      t.string :frequency
      t.text :howtodo

      t.timestamps null: false
      t.belongs_to :client
      t.belongs_to :coach
    end
  end
end
