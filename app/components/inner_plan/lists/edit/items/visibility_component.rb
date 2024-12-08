module InnerPlan::Lists::Edit::Items
  class VisibilityComponent < Phlex::HTML
    def initialize(form:)
      @form = form
    end

    def template
      div(class: "mb-2") do
        @form.label :visibility, class: 'form-label'
        @form.select :visibility,
                     InnerPlan::List.visibilities.values,
                     {},
                     class: 'form-select'
      end
    end
  end
end
