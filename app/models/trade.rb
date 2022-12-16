class Trade < ApplicationRecord
    belongs_to :user
    belongs_to :exch_asset
    
end
