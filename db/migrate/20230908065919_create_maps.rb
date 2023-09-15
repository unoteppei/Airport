class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :airport_name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
