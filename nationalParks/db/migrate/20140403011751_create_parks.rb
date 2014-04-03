class CreateParks < ActiveRecord::Migration
  def down
    drop_table "parks"
  end

  def up
    create_table "parks" do |t|
      t.string "parkname"
      t.string "location"
      t.string "info"

      t.timestamps
    end
  end
end
