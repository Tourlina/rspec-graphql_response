lib = File.expand_path("../lib/rspec/", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

root = File.expand_path("../lib/rspec/graphql_response/", __FILE__)
$LOAD_PATH.unshift(root) unless $LOAD_PATH.include?(root)

require_relative "lib/rspec/graphql_response/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-graphql_response"
  spec.version       = Rspec::GraphQLResponse::VERSION
  spec.authors       = ["River Lynn Bailey"]
  spec.email         = ["riverl.bailey@testdouble.com"]

  spec.summary       = %q{Verify ruby-graphql responses with a :graphql spec type}
  spec.description   = %q{Adds a :graphql rspec type with built-in helpers and matchers for ruby-graphql gem responses}
  spec.homepage      = "https://github.com/testdouble/rspec-graphql_response"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "graphql", "~> 1.12"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"

  spec.add_dependency "rspec"
end
