Rails.application.routes.draw do
  mount InnerPlan::ListVisibility::Engine => "/inner_plan-list_visibility"
end
