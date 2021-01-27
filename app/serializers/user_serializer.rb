class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :club, :likes
  #belongs_to :club
  has_many :likes

  def club
    object.club
  end
end
