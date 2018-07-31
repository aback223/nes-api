class ContentSerializer < ActiveModel::Serializer
  attributes :content, :id
  belongs_to :story
end
