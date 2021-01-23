class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :lat
      t.string :lng
      t.string :name
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
