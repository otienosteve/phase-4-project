class JobSerializer < ActiveModel::Serializer
  attributes :id, :description, :company, :experience, :requirements
end
