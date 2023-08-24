class AddJobTitleToLives < ActiveRecord::Migration[7.0]
  def change
    add_column :lives, :job_title, :string
  end
end
