module InnerPlan::List::Operation
  module UpdatePatch
    def self.prepended(base)
      base.step :assign_visibility, after: :assign_default_attributes
    end

    private

    def assign_visibility(ctx, model:, params:, **)
      model.visibility = params[:visibility]
      true
    end
  end
end

InnerPlan::List::Operation::Update.prepend(InnerPlan::List::Operation::UpdatePatch) unless InnerPlan::List::Operation::Update.include?(InnerPlan::List::Operation::UpdatePatch)
