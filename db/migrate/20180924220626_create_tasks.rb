class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      
      t.string :subject 
      t.string :category 
      t.integer :points
      
      t.timestamp
    end
  end
end
