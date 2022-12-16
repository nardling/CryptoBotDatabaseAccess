class CreateExchAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :exch_assets do |t|
      t.belongs_to :exchange
      t.string :symbol
      t.string :descr
      t.timestamps
    end
  end
end
