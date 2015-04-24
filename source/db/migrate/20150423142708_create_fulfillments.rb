class CreateFulfillments < ActiveRecord::Migration
  def change
    create_table :fulfillments do |t|
      t.belongs_to :fulfiller
      t.belongs_to :wish

      t.timestamps
    end
  end
end
