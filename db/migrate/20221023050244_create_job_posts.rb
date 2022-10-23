class CreateJobPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :job_posts do |t|
      t.integer :company_id
      t.string :job_title
      t.string :post
      t.intger :no_vacancy
      t.string :start_date
      t.integer :candidate_id

      t.timestamps
    end
  end
end
