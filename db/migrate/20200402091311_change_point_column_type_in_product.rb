class ChangePointColumnTypeInProduct < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :point, :float
  end
end
