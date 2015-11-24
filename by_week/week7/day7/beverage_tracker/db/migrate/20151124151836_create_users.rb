class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :age
      t.integer :height
      t.integer :Weight
      t.date :birthday

      t.timestamps null: false
    end
  end
end
