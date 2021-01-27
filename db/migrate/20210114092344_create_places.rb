class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.float :lat
      t.float :lng
      t.string :name
      t.text :description
      t.date :date
      t.string :image_url

      t.timestamps
    end
  end
end
