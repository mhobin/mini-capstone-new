class ChangeDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal
  end
end
