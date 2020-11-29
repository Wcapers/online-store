class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :img, default: 'image.png'
      t.string :content
      t.string :keywords
      t.string :description
      t.float :price
      t.float :old_price
      t.integer :status
      t.integer :hit, default: 0
      t.timestamps
    end
  end
end
