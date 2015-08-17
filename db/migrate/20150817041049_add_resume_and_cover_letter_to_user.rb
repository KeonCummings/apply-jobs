class AddResumeAndCoverLetterToUser < ActiveRecord::Migration
  def change
  	add_column :users, :resume, :string
  	add_column :users, :cover_letter, :string
  end
end
