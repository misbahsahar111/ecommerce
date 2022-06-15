class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.decimal :subtotal
      t.decimal :total

      t.timestamps
    end
  end
end
