class AddOmniauthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :facebook_picture_url, :string
    add_column :users, :token, :string
    add_column :users, :token_expiry, :datetime
  	#may need to add first and last name I alreayd took out first
  end
end
