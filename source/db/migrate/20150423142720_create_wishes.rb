class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :meal, null: false
      t.string :temporality, null: false
      t.belongs_to :creator, null: false
      t.timestamps null: false
    end
  end
end
