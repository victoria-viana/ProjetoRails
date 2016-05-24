class Client < ActiveRecord::Base
  has_one :card
  has_many :coaches, through: :cards

end
