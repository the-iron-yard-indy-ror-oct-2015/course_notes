class AddImageUrlToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :image_url, :string
  end
end
