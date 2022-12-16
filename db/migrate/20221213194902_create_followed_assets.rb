class CreateFollowedAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :followed_assets do |t|
      t.belongs_to :user
      t.belongs_to :exch_asset
      t.timestamps
    end
  end
end
