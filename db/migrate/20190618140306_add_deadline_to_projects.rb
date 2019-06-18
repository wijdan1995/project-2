class AddDeadlineToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :deadline, :date
  end
end
