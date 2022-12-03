class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :posts
  has_one :profile
  has_many :posts_tags
  has_many :tags, through: :posts_tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
