class Card < ActiveRecord::Base
  belongs_to :client
  belongs_to :coach

end
