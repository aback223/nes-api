class StorySerializer < ActiveModel::Serializer
  attributes :title, :id, :created_at
  has_many :contents
end
