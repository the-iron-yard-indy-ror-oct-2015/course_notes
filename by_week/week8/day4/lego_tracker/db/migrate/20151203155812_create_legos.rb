class CreateLegos < ActiveRecord::Migration
  def change
    create_table :legos do |t|
      t.string :name
      t.string :color
      t.integer :quantity
      t.string :size
      t.integer :lego_set_id

      t.timestamps null: false
    end
  end
end
