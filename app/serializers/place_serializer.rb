class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :date
end
