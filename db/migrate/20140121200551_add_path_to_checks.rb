class AddPathToChecks < ActiveRecord::Migration
  def change
    add_column :checks, :path, :string, default: "/"
  end
end
