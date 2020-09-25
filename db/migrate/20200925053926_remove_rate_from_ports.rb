class RemoveRateFromPorts < ActiveRecord::Migration[6.0]
  def change
    remove_column :ports, :spot_rate
    remove_column :ports, :rate
  end
end
