class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :todo
      t.string :category
      t.date :due_date
      t.integer :priority
      t.integer :user_id

      t.timestamps
    end
  end
end
