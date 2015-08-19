class ChangePhoneAndZipToText < ActiveRecord::Migration
  def change
  	remove_column :users, :zip, :integer
  	remove_column :users, :phone, :integer
  	add_column :users, :zip, :string
  	add_column :users, :phone, :string
  end
end
