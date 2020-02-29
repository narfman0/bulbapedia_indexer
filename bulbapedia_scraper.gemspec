lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bulbapedia_scraper/version"

Gem::Specification.new do |spec|
  spec.name          = "bulbapedia_scraper"
  spec.version       = BulbapediaScraper::VERSION
  spec.authors       = ["Jon Robison"]
  spec.email         = ["narfman0@gmail.com"]

  spec.summary       = %q{Bulbapedia Scraper}
  spec.description   = %q{Bulbapedia Scraper to archive the site}
  spec.homepage      = "https://github.com/narfman0/bulbapedia_scraper"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/narfman0/bulbapedia_scraper"
  spec.metadata["changelog_uri"] = "https://github.com/narfman0/bulbapedia_scraper/CHANGELOG"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
