class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :company
      t.integer :experience
      t.string :requirements

      t.timestamps
    end
  end
end
