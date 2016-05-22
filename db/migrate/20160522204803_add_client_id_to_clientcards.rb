class AddClientIdToClientcards < ActiveRecord::Migration
  def change
    add_column :clientcards, :client_id, :integer
  end
end
