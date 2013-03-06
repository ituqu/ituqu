class AddSthToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :qq, :string
  	add_column :users, :gender, :string
  end
end
