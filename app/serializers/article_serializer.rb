class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :body, :image, :categories

  def image
    object.image.attachment.blob.filename unless object.image.attachment.nil?
  end
end
