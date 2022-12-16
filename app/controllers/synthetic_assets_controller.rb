class SyntheticAssetsController < ApplicationController

    def addNew
        nf = SyntheticAsset.create(synthetic_asset)
        if (nf)
            render json: nf
        else
            render json: { errors: "Not Created" }
        end
    end

    private
    # def synthetic_leg
    #     params.require(:synthetic_leg).permit(:exch_asset_id, :weight)
    # end

    def synthetic_asset
        params.require(:synthetic_asset).permit(:user_id, :descr, synth_legs_attributes: [:exch_asset_id, :weight])
    end
end
