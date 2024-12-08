# frozen_string_literal: true

module InnerPlan::ListVisibility
  class Configuration
    attr_accessor :visibilities

    def initialize
      @visibilities = {
        public: 'public',
        private: 'private'
      }
    end
  end
end
