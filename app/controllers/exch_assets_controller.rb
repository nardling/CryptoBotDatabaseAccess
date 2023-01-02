class ExchAssetsController < ApplicationController

    def getAllAssets
        sql = "select ea.*, e.name as exchange_name from exch_assets ea
        inner join exchanges e on e.id = ea.exchange_id"
        assets = ActiveRecord::Base.connection.execute(sql)
        render json: assets
    end
end
