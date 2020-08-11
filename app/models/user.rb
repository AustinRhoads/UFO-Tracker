
class User < ActiveRecord::Base
    extend Slugifiable::ClassMethods
    include Slugifiable::InstanceMethods
    has_secure_password
    has_many :encounters
    #has_many :mass_users
    has_many :case_files, through: :encounters
    validates_presence_of :username, :email, :password
    scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }

    

    def self.test_run
         case11 = CaseFile.create
         case11ds = Encounter.all[0]
         case11fm = Encounter.all[1]
         case11.encounters << case11ds
         case11.encounters << case11fm
         case11.users
         # case11 = MassEncounter.all[0]
    end


end