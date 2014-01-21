class CreateCheckHeaders < ActiveRecord::Migration
  def change
    create_table :check_headers do |t|
      t.integer :check_id
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
