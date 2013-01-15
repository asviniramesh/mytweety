class AddColumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gid, :integer
  end
end
