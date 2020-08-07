class MassEncounter < ActiveRecord::Base
    has_many :encounters
    has_many :users, through: :encounters
end