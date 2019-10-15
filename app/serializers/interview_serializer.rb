class InterviewSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :salary, :pretty_created_date, :position, :location
  has_many :reviews
end
