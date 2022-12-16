class FollowedAssetsController < ApplicationController

    def getAssetsForUser
        assets = ExchAsset.joins("INNER JOIN followed_assets f on f.exch_asset_id = exch_assets.id where f.user_id = ", params[:uid])
        render json: assets, include: :exchange
    end

    def addNew
        nf = FollowedAsset.create(followParameters)
        if (nf)
            render json: nf
        else
            render json: { errors: "Not Created" }
        end
    end

    def remove
        ef = FollowedAsset.find_by(user_id: params[:user_id], exch_asset_id: params[:exch_asset_id])
        if (ef)
            ef.destroy
        end
    end


    private
    def followParameters
        params.require(:followed_asset).permit(:user_id, :exch_asset_id)
    end
end
