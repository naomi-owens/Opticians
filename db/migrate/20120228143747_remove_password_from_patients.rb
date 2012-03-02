class RemovePasswordFromPatients < ActiveRecord::Migration
  def up
    remove_column :patients, :password
  end

  def down
    add_column :patients, :password, :string
  end
end
