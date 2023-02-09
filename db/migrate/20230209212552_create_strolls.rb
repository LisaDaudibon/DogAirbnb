class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|

      t.timestamps
    end
  end
end
