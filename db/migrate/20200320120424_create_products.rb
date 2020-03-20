class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string     :name,  null: false
      t.string     :brand, null: false
      t.integer    :price, null: false
      t.integer    :point, null: false, default: 0
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
