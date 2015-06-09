class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :first_name
      t.string :last_name
      t.integer :periodicity_of_communication
      t.date :date_of_checkin
      t.boolean :christmas_card
      t.boolean :holiday_card
      t.text :shared_activities_history
      t.text :education
      t.text :interests
      t.text :professional
      t.text :family
      t.text :first_met
      t.date :birthday
      t.string :email

      t.timestamps

    end
  end
end
