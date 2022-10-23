class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.integer :candidate_id
      t.string :Resume_headline
      t.string :path

      t.timestamps
    end
  end
end
