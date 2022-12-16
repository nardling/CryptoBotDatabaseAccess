class FollowedAssetsController < ApplicationController

    def getAssetsForUser
        assets = ExchAsset.joins("INNER JOIN followed_assets f on f.exch_asset_id = exch_assets.id where f.user_id = ", params[:uid])
        render json: assets, include: :exchange
    end
end
