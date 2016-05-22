class AddIndexToClientcardsExercise < ActiveRecord::Migration
  def change
    add_index :clientcards, :exercise, unique: false
  end
end
