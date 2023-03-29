class GymSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :location, :operating_hours, :price
  has_one :admin
end
