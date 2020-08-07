

class CreateUsers < ActiveRecord::Migration[6.0]
    def change
        create_table :users do |t|
            t.string :username
            t.string :email
            t.string :password_digest
            t.boolean :is_military, :default => false
            t.boolean :is_law_enforcement, :default => false
        end
    end
end