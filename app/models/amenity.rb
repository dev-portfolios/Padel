class Amenity < ApplicationRecord

  scope :is_active, -> { where(active: true).order(:position) }
end
