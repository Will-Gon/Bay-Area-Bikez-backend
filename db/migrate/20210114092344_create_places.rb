class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.decimal :lat
      t.decimal :lng
      t.string :name
      t.text :description
      t.datetime :date
      t.string :image_url

      t.timestamps
    end
  end
end
