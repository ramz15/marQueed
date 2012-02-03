class MoveUserIdAndProjectIdInImages < ActiveRecord::Migration
  def change
    change_column :images, :user_id, :integer, { :after => :id }
    change_column :images, :project_id, :integer, { :after => :user_id }
  end
end