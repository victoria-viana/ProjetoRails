class Client < ActiveRecord::Base
    has_one :clientcard
    belongs_to :coach



end
