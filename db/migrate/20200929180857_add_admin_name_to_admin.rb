class AddAdminNameToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :admin_name, :string
  end
end
