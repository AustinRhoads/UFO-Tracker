class CreateEncounters < ActiveRecord::Migration[6.0]
    def change 
        create_table :encounters do |t|
        t.string :name
        t.string :date
        t.string :time
        t.string :location
        t.string :country
        t.integer :latitude
        t.integer :longitude
        t.integer :user_id
        t.integer :kind
        t.string :other_kind
        t.string :description
        t.integer :mass_encounter_id
        t.boolean :men_in_black, :default => false
        t.boolean :military_involved, :default => false
        t.boolean :law_enforcement_involved, :default => false
        t.boolean :happen_to_user, :default => true
        end
    end
end