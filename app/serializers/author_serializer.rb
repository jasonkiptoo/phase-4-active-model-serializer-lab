class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile, :posts

  
  has_many :posts, serializer: AuthorPostSerializer
  has_one :profile, serializer: AuthorProfileSerializer

end
