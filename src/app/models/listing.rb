class Listing < ApplicationRecord
    belongs_to :user
    
    # validations
    has_many_attached :images
    validates_length_of :images, maximum: 5
    validates :title, presence: true
    validates :location, presence: true
    # no validation for description
    validates :price, numericality: { greater_than: 0 }
    validates :quantity_total, numericality: {greater_than: 0}
    validates :quantity_available, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: :quantity_total}
    # Unit
    enum unit: {item: 0, g: 1, kg: 2}
end
