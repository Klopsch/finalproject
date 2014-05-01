class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :park_id
      t.string :user
      t.string :tag
      t.timestamps
    end
  end
end
