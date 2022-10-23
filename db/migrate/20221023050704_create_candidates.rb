class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :username
      t.string :first_name
      t.string :middle_name
      t.string :adress
      t.string :gender
      t.string :contact
      t.string :email
      t.integer :resume_id
      t.integer :job_post_id

      t.timestamps
    end
  end
end
