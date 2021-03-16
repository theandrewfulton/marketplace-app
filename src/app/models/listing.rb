class Listing < ApplicationRecord
    belongs_to :user
    has_many_attached :images
    validates_length_of :images, maximum: 5
end
