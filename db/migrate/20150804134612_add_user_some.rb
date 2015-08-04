class AddUserSome < ActiveRecord::Migration
  def change
    add_column :users, :words, :string
add_column :users, :future, :string
add_column :users, :story, :string
add_column :users, :help, :string
add_column :users, :share, :string
add_column :users, :career_id1, :string
add_column :users, :career_id2, :string


  end
end
