class AddSpotRateToPorts < ActiveRecord::Migration[6.0]
  def change
    add_column :ports, :spot_rate, :float, null: false, default: 0
    add_column :ports, :port_spec, :string, null: false, default: "no-info"
  end
end
