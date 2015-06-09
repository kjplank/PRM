class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :tag_id
      t.integer :relationship_id
      t.integer :user_id

      t.timestamps

    end
  end
end
