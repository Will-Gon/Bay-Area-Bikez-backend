class LikeSerializer < ActiveModel::Serializer
  #belongs_to :place 
  attributes :id, :user_id, :place
  def place
    object.place
  end
end
