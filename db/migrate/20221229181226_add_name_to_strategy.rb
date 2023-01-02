class AddNameToStrategy < ActiveRecord::Migration[7.0]
  def change
    add_column :strategies, :strategy_name, :string
  end
end
