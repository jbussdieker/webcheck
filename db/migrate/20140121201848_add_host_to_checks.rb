class AddHostToChecks < ActiveRecord::Migration
  def change
    add_column :checks, :host, :string
  end
end
