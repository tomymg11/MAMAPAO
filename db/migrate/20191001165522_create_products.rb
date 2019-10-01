class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :price
      t.integer :amount
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
