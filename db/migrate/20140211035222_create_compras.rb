class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :user_id
      t.integer :item_id
      t.string :status
      t.date :data
      t.integer :quantidade
    end
  end
end
