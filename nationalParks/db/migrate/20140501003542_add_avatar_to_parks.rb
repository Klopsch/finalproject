class AddAvatarToParks < ActiveRecord::Migration
  def change
    add_column :parks, :avatar, :string
  end
end
