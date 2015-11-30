class ChangeImageUrlColumnOnDrinks < ActiveRecord::Migration
  def change
    rename_column :drinks, :image_url, :url_of_image
  end
end
