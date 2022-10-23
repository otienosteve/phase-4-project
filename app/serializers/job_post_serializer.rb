class JobPostSerializer < ActiveModel::Serializer
  attributes :id, :company_id, :job_title, :post, :no_vacancy, :start_date
end
