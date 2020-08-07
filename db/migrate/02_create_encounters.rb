class CreateEncounters < ActiveRecord::Migration[6.0]
    def change 
        create_table :encounters do |t|
        t.integer :kind
        t.string :date
        t.string :time
        t.integer :user_id
        t.string :description
        t.boolean :men_in_black, :default => false
        t.boolean :military_involved, :default => false
        t.integer :mass_encounter_id
        end
    end
end