$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "yaffle/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "yaffle"
  spec.version     = Yaffle::VERSION
  spec.authors     = ["yujiloh0816"]
  spec.email       = ["imp.yfujiwara@gmail.com"]
  spec.homepage    = "https://github.com/yujiloh0816/yaffle"
  spec.summary     = "Summary of Yaffle."
  spec.description = "Description of Yaffle."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/yujiloh0816/yaffle"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency "rspec-rails"
end
