class Student < ApplicationRecord
    belongs_to :classroom

    def nameElv
        "#{self.first_name.capitalize} #{self.last_name.upcase}"
    end
end
