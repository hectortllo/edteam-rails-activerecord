class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :profiles, :name, :full_name
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
