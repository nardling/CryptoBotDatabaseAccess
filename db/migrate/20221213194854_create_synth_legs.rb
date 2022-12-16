class CreateSynthLegs < ActiveRecord::Migration[7.0]
  def change
    create_table :synth_legs do |t|
      t.belongs_to :synthetic_asset
      t.belongs_to :exch_asset
      t.float :weight
      t.timestamps
    end
  end
end
