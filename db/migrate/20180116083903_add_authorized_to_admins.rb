class AddAuthorizedToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :authorized, :boolean, null: false, default: false
  end
end
