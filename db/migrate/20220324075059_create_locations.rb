class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :display_order

      t.timestamps
    end
  end
end
