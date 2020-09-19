class AddColumnToPorts < ActiveRecord::Migration[6.0]
  def change
    add_reference :ports, :admin, null: false, foreign_key: true
  end
end
