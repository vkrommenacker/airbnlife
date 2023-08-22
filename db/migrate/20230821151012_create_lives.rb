class CreateLives < ActiveRecord::Migration[7.0]
  def change
    create_table :lives do |t|
      t.string :name
      t.float :price_per_day
      t.string :description
      t.string :picture_url
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
