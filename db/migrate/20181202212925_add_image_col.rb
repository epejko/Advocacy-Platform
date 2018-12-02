class AddImageCol < ActiveRecord::Migration
  def change
    add_column :tasks, :image, :string
  end
end
