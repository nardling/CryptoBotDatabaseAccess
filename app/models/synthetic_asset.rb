class SyntheticAsset < ApplicationRecord
    belongs_to :user
    has_many :synth_legs
    accepts_nested_attributes_for :synth_legs
    has_many :exch_assets, through: :synth_legs
end
