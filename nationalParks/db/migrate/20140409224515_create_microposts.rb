class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :parkname
      t.string :uploader
      t.text :text

      t.timestamps
    end
  end
end
