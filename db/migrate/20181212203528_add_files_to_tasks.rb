class AddFilesToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :filename, :string
    add_column :tasks, :content_type, :string
    add_column :tasks, :file_contents, :binary
  end
end
