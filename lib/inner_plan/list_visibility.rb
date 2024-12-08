require "inner_plan/list_visibility/version"
require "inner_plan/list_visibility/configuration"
require "inner_plan/list_visibility/engine"

module InnerPlan
  module ListVisibility
    class << self
      def configuration
        @configuration ||= Configuration.new
      end

      def configure
        yield(configuration)
      end
    end
  end
end
