class CreateLetcheeses < ActiveRecord::Migration
  def change
    create_table :letcheeses do |t|
      t.string :own_cheeses
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
