class AddAuthorToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :author, :string
  end
end
