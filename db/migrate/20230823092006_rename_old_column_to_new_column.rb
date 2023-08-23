class RenameOldColumnToNewColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :lives, :title, :string
    Life.update_all('title = name')
    remove_column :lives, :name
  end
end
