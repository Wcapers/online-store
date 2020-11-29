class AddRefManufacturerProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference(:products, :manufacturer, foreign_key: true)
  end
end
