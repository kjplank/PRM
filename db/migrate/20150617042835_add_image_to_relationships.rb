class AddImageToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :image, :string
  end
end
