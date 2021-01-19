class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :place_id
end
