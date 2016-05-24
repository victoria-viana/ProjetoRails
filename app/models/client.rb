class Client < ActiveRecord::Base
  has_many :cards
  has_many :coaches, through: :cards


end
