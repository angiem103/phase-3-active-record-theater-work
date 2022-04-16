class Audition < ActiveRecord::Base
  belongs_to :role

    def call_back
        self.toggle!(:hired)
    end
end