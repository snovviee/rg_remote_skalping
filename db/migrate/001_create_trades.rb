class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades, do |t|
      t.symbol :text
    end
  end
end
