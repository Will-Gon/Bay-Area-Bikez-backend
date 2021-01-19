class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :location
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
