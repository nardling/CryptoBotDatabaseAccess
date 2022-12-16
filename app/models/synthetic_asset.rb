class SyntheticAsset < ApplicationRecord
    belongs_to :user
    has_many :synth_legs
    accepts_nested_attributes_for :synth_legs
end
