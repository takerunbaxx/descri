class AddRateToPorts < ActiveRecord::Migration[6.0]
  def change
    add_column :ports, :rate, :float, null: false, default: 0
  end
end
