module InnerPlan
  module ListPatch
    def self.prepended(base)
      base.enum visibility: InnerPlan::ListVisibility.configuration.visibilities,
                _prefix: true,
                _default: "public"

      base.validates :visibility, inclusion: { in: base.visibilities.values }
    end
  end
end

InnerPlan::List.prepend(InnerPlan::ListPatch) unless InnerPlan::List.include?(InnerPlan::ListPatch)
