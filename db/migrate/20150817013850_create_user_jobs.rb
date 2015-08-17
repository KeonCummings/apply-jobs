class CreateUserJobs < ActiveRecord::Migration
  def change
    create_table :user_jobs do |t|
    	t.integer "user_id"
    	t.integer "job_id"

      t.timestamps null: false
    end
    add_index "user_jobs", ["user_id"], :name => "index_user_jobs_on_user_id"
  end
end
