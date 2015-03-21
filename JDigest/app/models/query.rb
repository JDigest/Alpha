class Query < ActiveRecord::Base

    validates :query_text, :location_text, presence: true
    validates_length_of :query_text, :location_text, minimum: 3, maximum: 40
end
