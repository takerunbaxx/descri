class AddDefaultToPorts < ActiveRecord::Migration[6.0]
  def change
        change_column_null :ports, :information, true
        change_column_null :ports, :detail, true
        change_column_null :ports, :summary, true
  end
end
