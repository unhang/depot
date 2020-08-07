class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
