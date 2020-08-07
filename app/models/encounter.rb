class Encounter < ActiveRecord::Base
    belongs_to :user
    belongs_to :mass_encounter
    
    
end