class AddDogIdToStrolls < ActiveRecord::Migration[7.0]
  def change
    add_column :strolls, :dog_id, :integer
  end
end
