class SyntheticAssetsController < ApplicationController

    def addNew
        nf = SyntheticAsset.create(synthetic_asset)
        if (nf)
            render json: nf
        else
            render json: { errors: "Not Created" }
        end
    end

    def getForUser
        assets = SyntheticAsset.where(user_id: params[:uid])
        render json: assets
    end

    def getLegsForAsset
        sql = "select s.descr, sl.id, sl.weight, ea.symbol, ea.descr, e.name as exchange_name from synthetic_assets s
        INNER JOIN synth_legs sl on sl.synthetic_asset_id = s.id
        INNER JOIN exch_assets ea on ea.id = sl.exch_asset_id
        INNER JOIN exchanges e on e.id = ea.exchange_id
        where s.id = " + params[:assetId]
        assets = ActiveRecord::Base.connection.execute(sql)
        render json: assets
    end

    def remove
        nf = SyntheticAsset.find_by(id: params[:assetId])
        nf.destroy()
    end

    private

    def synthetic_asset
        params.require(:synthetic_asset).permit(:user_id, :descr, synth_legs_attributes: [:exch_asset_id, :weight])
    end
end
