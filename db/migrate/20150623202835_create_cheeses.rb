class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :cheese_name
      t.string :category

      t.timestamps null: false
    end
  end
end
