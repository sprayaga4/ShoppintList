class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :activity
      t.string :alarm

      t.timestamps null: false
    end
  end
end
