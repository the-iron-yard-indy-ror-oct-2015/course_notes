class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :feed_url
      t.datetime :last_checked
      t.string :name
      t.string :main_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
