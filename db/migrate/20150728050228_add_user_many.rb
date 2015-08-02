class AddUserMany < ActiveRecord::Migration
  def change
    add_column :users, :career, :string
    add_column :users, :nickname, :string
    add_column :users, :careered, :string
    add_column :users, :study, :string
    add_column :users, :hobby, :string
    add_column :users, :gifted, :string
    add_column :users, :other, :string
    add_column :users, :age, :string
    add_column :users, :region, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
  end
end
