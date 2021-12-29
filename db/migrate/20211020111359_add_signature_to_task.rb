class AddSignatureToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :signature, :binary
    add_column :tasks, :signed_on, :datetime
  end
end
