class Encounter < ActiveRecord::Base
    belongs_to :user
    belongs_to :case_file

    validates_presence_of :description, :name
    validates_uniqueness_of :description

    def kind_ordinalize
        if (11..13).include?(self.kind % 100)
          "#{self.kind}th"
        else
          case self.kind % 10
            when 1; "#{self.kind}st"
            when 2; "#{self.kind}nd"
            when 3; "#{self.kind}rd"
            else    "#{self.kind}th"
          end
        end
      end
end