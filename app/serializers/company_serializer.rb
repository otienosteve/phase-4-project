class CompanySerializer < ActiveModel::Serializer
  attributes :id, :company_name, :contact_person, :company_contact, :company_adress, :company_email, :company_detail
end
