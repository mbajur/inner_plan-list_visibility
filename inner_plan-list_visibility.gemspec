require_relative "lib/inner_plan/list_visibility/version"

Gem::Specification.new do |spec|
  spec.name        = "inner_plan-list_visibility"
  spec.version     = InnerPlan::ListVisibility::VERSION
  spec.authors     = ["mbajur"]
  spec.email       = ["mbajur@gmail.com"]
  spec.homepage    = "https://github.com/mbajur/inner_plan-list_visibility"
  spec.summary     = "Lists visibility control plugin for InnerPlan"
  spec.description = "Lists visibility control plugin for InnerPlan"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.5"
end
