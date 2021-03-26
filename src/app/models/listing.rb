class Listing < ApplicationRecord
    belongs_to :user
    validates_associated :unit
    has_many_attached :images
    validates_length_of :images, maximum: 5
    validates :title, presence: true
    validates :location, presence: true
    validates :price, numericality: { greater_than: 0 }
    # validates :quantity
end
