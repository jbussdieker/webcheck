class AddStatusToChecks < ActiveRecord::Migration
  def change
    add_column :checks, :status, :string
    add_column :checks, :status_message, :string
  end
end
