class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :name
    	t.string :description

      t.timestamps null: false
    end
  end
end
