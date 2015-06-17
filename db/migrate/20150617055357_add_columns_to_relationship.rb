class AddColumnsToRelationship < ActiveRecord::Migration
  def change

    add_column :relationships, :next_checkin, :date
    add_column :relationships, :mobile, :string
    add_column :relationships, :desk, :string
    remove_column :relationships, :first_met

  end
end
