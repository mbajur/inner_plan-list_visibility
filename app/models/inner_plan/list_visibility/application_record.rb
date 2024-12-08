module InnerPlan
  module ListVisibility
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
