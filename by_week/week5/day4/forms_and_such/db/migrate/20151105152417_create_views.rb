class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.string :ip_address
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
