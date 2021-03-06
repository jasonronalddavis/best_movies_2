require_relative './lib/best_movies/version'


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "best_movies/version"

Gem::Specification.new do |spec|
  spec.name          = "best_movies"
  spec.version       = BestMovies::VERSION
  spec.authors       = ["jasonronalddavis"]
  spec.email         = ["jdavis@c.ringling.edu"]

  spec.summary       = "first project"

  spec.homepage      = "https://editorial.rottentomatoes.com/guide/best-movies-of-2019/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://editorial.rottentomatoes.com/guide/best-movies-of-2019/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://editorial.rottentomatoes.com/guide/best-movies-of-2019/"
  spec.metadata["changelog_uri"] = "https://editorial.rottentomatoes.com/guide/best-movies-of-2019/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
