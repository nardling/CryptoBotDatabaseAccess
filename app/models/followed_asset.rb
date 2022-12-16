class FollowedAsset < ApplicationRecord
    belongs_to :user
    belongs_to :exch_asset
end
