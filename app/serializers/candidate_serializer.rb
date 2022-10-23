class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :middle_name, :adress, :gender, :contact, :email
end
