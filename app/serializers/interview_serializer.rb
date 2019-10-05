class InterviewSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :salary, :day, :position, :location
  has_many :reviews
end
