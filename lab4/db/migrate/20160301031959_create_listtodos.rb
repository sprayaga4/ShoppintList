class CreateListtodos < ActiveRecord::Migration
  def change
    create_table :listtodos do |t|
      t.string :todo
      t.string :due

      t.timestamps null: false
    end
  end
end
