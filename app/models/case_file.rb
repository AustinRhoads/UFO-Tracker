class CaseFile < ActiveRecord::Base
    has_many :encounters
    has_many :users, through: :encounters

    def military_involved
        arr = []
        self.encounters.each do |encounter|
            arr << encounter.military_involved
        end
        if arr.any?(true)
            return true
        end
    end

    def law_enforcement_involved
        arr = []
        self.encounters.each do |encounter|
            arr << encounter.law_enforcement_involved
        end
        if arr.any?(true)
            return true
        end
    end

    def kind
        arr = []
        self.encounters.each do |encounter|
            arr << encounter.kind
        end
      arr.sort.last
    end

end