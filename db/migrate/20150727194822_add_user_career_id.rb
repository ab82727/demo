class AddUserCareerId < ActiveRecord::Migration
  def change
    add_column :users, :career_id, :string
  end
end
