class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
       if self.auditions
        self.auditions.first
       else 'no actor has been hired for this role'
       end
    end

    def understudy
        if self.auditions.second
            self.auditions.second
           else 'no actor has been hired for understudy for this role'
           end
    end
  end