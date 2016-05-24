class Client < ActiveRecord::Base
  has_one :clientcard
  has_many :coaches, through: :clientcards

end
