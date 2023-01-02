class CreateStrategies < ActiveRecord::Migration[7.0]
  def change
    create_table :strategies do |t|
      t.string :target
      t.string :condition
      t.float :value
      t.string :action
      t.float :max_exposure
      t.float :max_trade_notional
      t.integer :time_delay
      t.belongs_to :user
      t.belongs_to :synthetic_asset
      t.timestamps
    end
  end
end
