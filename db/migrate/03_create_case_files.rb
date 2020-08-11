class CreateCaseFiles < ActiveRecord::Migration[6.0]

    def change
        create_table :case_files do |t|
            t.string :name
            t.string :date
            t.string :time
            t.string :location
            t.string :country
            t.string :description
        end
    end

end