class Encounter < ActiveRecord::Base
    belongs_to :user
    belongs_to :case_file
    
    
end