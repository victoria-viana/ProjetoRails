class AddClientToCoach < ActiveRecord::Migration
  def change
     add_reference :clients, :coach, index: true
  end
end
