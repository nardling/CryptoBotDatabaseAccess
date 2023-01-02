class StrategiesController < ApplicationController

    def addNew
        ns = Strategy.create(new_strategy)
        if (ns)
            render json: ns
        else
            render json: { }
        end
    end

    def getStrategiesForUser
        sql = "select s.strategy_name, s.target, s.condition, s.value, s.action,
        s.max_exposure, s.max_trade_notional, s.time_delay, a.descr as synth_asset_name
        from strategies s INNER JOIN synthetic_assets a on a.id = s.synthetic_asset_id
        where s.user_id = " + params[:user_id]
        strategies = ActiveRecord::Base.connection.execute(sql)
        render json: strategies
    end
    
    private
    def new_strategy
        params.require(:strategy).permit(:synthetic_asset_id, :user_id, :target, :condition, :value, :action, :max_exposure, :max_trade_notional, :time_delay, :strategy_name)
    end
end
