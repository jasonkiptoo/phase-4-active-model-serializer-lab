class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile, :posts
  belongs_to :profile
  has_many :posts, serializer: AuthorPostSerializer
end
