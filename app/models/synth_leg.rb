class SynthLeg < ApplicationRecord
    belongs_to :exch_asset
    has_many :exchanges, through: :exch_asset
end
