class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :inquiry, :answer
  belongs_to :interview
end
