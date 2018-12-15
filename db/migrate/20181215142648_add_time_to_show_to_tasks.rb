class AddTimeToShowToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :show_time, :string
  end
end
