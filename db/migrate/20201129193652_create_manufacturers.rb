class CreateManufacturers < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturers do |t|
      t.string :title
      t.string :description
      t.string :img
      t.timestamps
    end
  end
end
