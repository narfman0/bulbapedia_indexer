lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bulbapedia_indexer/version"

Gem::Specification.new do |spec|
  spec.name          = "bulbapedia_indexer"
  spec.version       = BulbapediaIndexer::VERSION
  spec.authors       = ["Jon Robison"]
  spec.email         = ["narfman0@gmail.com"]

  spec.summary       = %q{Bulbapedia Indexer}
  spec.description   = %q{Bulbapedia Indexer to archive the site}
  spec.homepage      = "https://github.com/narfman0/bulbapedia_indexer"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/narfman0/bulbapedia_indexer"
  spec.metadata["changelog_uri"] = "https://github.com/narfman0/bulbapedia_indexer/CHANGELOG"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
