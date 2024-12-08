module InnerPlan
  module ListVisibility
    class Engine < ::Rails::Engine
      isolate_namespace InnerPlan::ListVisibility

      config.to_prepare do
        Dir.glob(File.join(File.dirname(__FILE__), '../../../app/**/*_patch*.rb')) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end
      end

      config.after_initialize do
        InnerPlan.configuration.list_edit_view_rows
          .get(:primary_row)
          .content
          .add_after(:description, InnerPlan::SmartArray::Item.new(
            :visibility,
            { span: 6 },
            'InnerPlan::Lists::Edit::Items::VisibilityComponent'
          ))
      end
    end
  end
end
