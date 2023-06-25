$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_sparkline/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rails_sparkline"
  spec.version     = RailsSparkline::VERSION
  spec.authors     = ["Masroor Hussain"]
  spec.email       = ["masroorh7@gmail.com"]
  spec.homepage    = "https://github.com/masroorhussainv/rails_sparkline"
  spec.summary     = "Generates SVGs tags."
  spec.description = "Generates SVGs without using JavaScript packages."
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

  spec.add_dependency "rails", "~> 5.2.3", ">= 5.2.3"

  spec.add_development_dependency "sqlite3"
end
