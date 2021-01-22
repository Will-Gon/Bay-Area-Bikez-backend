class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :club
  #belongs_to :club

  def club
    object.club
  end
end
