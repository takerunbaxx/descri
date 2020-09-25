class AddPortrateToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :port_rate, :float, null: false, default: 0
    add_column :comments, :spot_rate, :float, null: false, default: 0
  end
end
