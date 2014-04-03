class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :parkname
      t.string :location
      t.string :info

      t.timestamps
    end
  end
end
