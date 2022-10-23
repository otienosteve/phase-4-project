class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :contact_person
      t.string :company_contact
      t.string :company_adress
      t.string :company_email
      t.string :company_detail
      t.integer :job_post_id

      t.timestamps
    end
  end
end
