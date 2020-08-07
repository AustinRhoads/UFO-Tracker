class CreateMassEncounters < ActiveRecord::Migration[6.0]

    def change
        create_table :mass_encounters do |t|
            t.string :name
            t.string :general_description
        end
    end

end