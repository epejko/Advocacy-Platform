class AddPointTotalToUser < ActiveRecord::Migration
  def change
    add_column :users, :pointtotal, :integer
  end
end
