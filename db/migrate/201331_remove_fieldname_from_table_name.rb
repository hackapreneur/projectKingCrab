class RemoveFieldnameFromTableName < ActiveRecord::Migration
  def up
    remove_column :users, :VIN
  end

  def down
    
  end
end
