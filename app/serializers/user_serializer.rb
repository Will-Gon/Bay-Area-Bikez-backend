class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :club_id
  belongs_to :club
end
