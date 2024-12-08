class AddVisibilityToInnerPlanLists < ActiveRecord::Migration[8.0]
  def change
    add_column :inner_plan_lists, :visibility, :string, default: 'public'
  end
end
