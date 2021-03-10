class AddAvatarsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :avatars, :string
  end
end
