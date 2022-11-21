class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
