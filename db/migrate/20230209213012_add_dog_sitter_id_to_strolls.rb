class AddDogSitterIdToStrolls < ActiveRecord::Migration[7.0]
  def change
    add_column :strolls, :dog_sitter_id, :integer
  end
end
