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
        sql = "select s.id, s.strategy_name, s.target, s.condition, s.value, s.action,
        s.max_exposure, s.max_trade_notional, s.time_delay, a.descr as synth_asset_name
        from strategies s INNER JOIN synthetic_assets a on a.id = s.synthetic_asset_id
        where s.user_id = " + params[:user_id]
        strategies = ActiveRecord::Base.connection.execute(sql)
        render json: strategies
    end

    def updateStrategyThreshold
        ns = Strategy.find(params[:strategyId])
        if (ns)
            sql = "update strategies set value = " + String(params[:new_value]) + " where id=" + String(params[:strategyId])
            updStrat = ActiveRecord::Base.connection.execute(sql)
            render json: updStrat
        else
            render json: { errors: " Invalid Id" }
        end
    end

    def removeStrategy
        ns = Strategy.find(params[:strategyId])
        if (ns)
            ns.destroy()
            render json: {}, status: :ok
        else
            render json: {}, status: :not_found
        end
    end
        
    private
    def new_strategy
        params.require(:strategy).permit(:synthetic_asset_id, :user_id, :target, :condition, :value, :action, :max_exposure, :max_trade_notional, :time_delay, :strategy_name)
    end
end
