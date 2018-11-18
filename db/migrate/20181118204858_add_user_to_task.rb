class AddUserToTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :user_id
    add_reference :tasks, :user, index: true, foreign_key: true
  end
end
