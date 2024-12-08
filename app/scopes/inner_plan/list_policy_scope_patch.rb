module InnerPlan
  module ListPolicyScopePatch
    def resolve
      scope.where("(user_id = ? AND visibility = 'private') OR visibility = 'public'", user.id)
    end
  end
end

InnerPlan::ListPolicy::Scope.prepend(InnerPlan::ListPolicyScopePatch)
