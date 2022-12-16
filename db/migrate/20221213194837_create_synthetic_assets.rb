class CreateSyntheticAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :synthetic_assets do |t|
      t.belongs_to :user
      t.string :descr
      t.timestamps
    end
  end
end
