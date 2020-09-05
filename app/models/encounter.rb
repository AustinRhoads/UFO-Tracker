class Encounter < ActiveRecord::Base
    belongs_to :user
    belongs_to :case_file

    validates_presence_of :description, :name
    validates_uniqueness_of :description
end