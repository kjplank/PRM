class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.text :context
      t.date :occurence
      t.date :entry_made
      t.integer :relationship_id
      t.integer :user_id

      t.timestamps

    end
  end
end
