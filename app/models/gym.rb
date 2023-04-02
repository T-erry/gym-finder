class Gym < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :location, presence: true, length: { maximum: 100 }
  validates :operating_hours, presence: true, length: { maximum: 100 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
   validates :admin_id, presence: true
   validates :image, presence: true

  belongs_to :admin
end
