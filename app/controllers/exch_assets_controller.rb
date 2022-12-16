class ExchAssetsController < ApplicationController

    def getAllAssets
        assets = ExchAsset.all
        render json: assets, include: :exchange
    end
end
