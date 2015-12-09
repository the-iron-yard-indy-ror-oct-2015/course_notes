class AddPermalinkToDaycares < ActiveRecord::Migration
  def change
    add_column :daycares, :permalink, :string
  end
end
