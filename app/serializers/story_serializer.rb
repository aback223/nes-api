class StorySerializer < ActiveModel::Serializer
  attributes :title, :id
  has_many :contents
end
