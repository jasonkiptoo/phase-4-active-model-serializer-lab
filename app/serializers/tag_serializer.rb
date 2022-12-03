class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts
  belongs_to :posts
end
