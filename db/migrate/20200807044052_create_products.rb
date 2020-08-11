class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, precision: 8, sacle: 2
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
