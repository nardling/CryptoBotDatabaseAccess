class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.belongs_to :user
      t.belongs_to :exch_asset
      t.float :price
      t.float :qty
      t.timestamps
    end
  end
end
