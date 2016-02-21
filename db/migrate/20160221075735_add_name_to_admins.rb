class AddNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :family_name, :string
    add_column :admins, :given_name, :string
  end
end
