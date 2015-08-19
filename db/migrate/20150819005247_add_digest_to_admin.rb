class AddDigestToAdmin < ActiveRecord::Migration
  def change
  	remove_column :admins, :password_hash, :string
  	add_column :admins, :remember_token, :string
  end
end
