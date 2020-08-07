class MassUser < ActiveRecord::Base
belongs_to :mass_encounter
belongs_to :user
end