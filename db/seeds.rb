# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# done 12-14

# Exchange.destroy_all
# ExchAsset.destroy_all

# binance = Exchange.create(name: "Binance")
# coinbase = Exchange.create(name: "Coinbase")

# btc_b = ExchAsset.create(exchange: binance, symbol: "BTC", descr: "btcudst")
# eth_b = ExchAsset.create(exchange: binance, symbol: "ETH", descr: "ethudst")
# sol_b = ExchAsset.create(exchange: binance, symbol: "SOL", descr: "soludst")

# btc_c = ExchAsset.create(exchange: coinbase, symbol: "BTC", descr: "BTC-USD")
# eth_c = ExchAsset.create(exchange: coinbase, symbol: "ETH", descr: "ETH-USD")
# sol_c = ExchAsset.create(exchange: coinbase, symbol: "SOL", descr: "SOL-USD")

# done 12-15
# u1 = User.create(user_name: 'DVB', password_digest: '1234')

# done 12-15
# fa1 = FollowedAsset.create(user_id: 1, exch_asset_id: 1)
# fa2 = FollowedAsset.create(user_id: 1, exch_asset_id: 2)

btc_b = ExchAsset.create(exchange_id: 3, symbol: "BTC Spot", descr: "btcusd")
eth_b = ExchAsset.create(exchange_id: 3, symbol: "ETH Spot", descr: "ethusd")
sol_b = ExchAsset.create(exchange_id: 3, symbol: "SOL Spot", descr: "solusd")