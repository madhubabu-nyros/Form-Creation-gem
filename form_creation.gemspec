$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "form_creation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "form_creation"
  spec.version     = FormCreation::VERSION
  spec.authors     = ["madhubabu-nyros"]
  spec.email       = ["madhubabu.nyros@gmail.com.com"]
  spec.homepage    = "https://rubygems.org"
  spec.summary     = "simple form"
  spec.description = "A simple form gem"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"

  spec.add_development_dependency "mysql2", '~> 0.5.2' 
  spec.add_development_dependency 'jquery-rails', '~> 4.3', '>= 4.3.5'
end 