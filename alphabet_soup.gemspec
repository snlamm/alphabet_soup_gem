# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alphabet_soup/version'

Gem::Specification.new do |spec|
  spec.name          = "alphabet_soup"
  spec.version       = AlphabetSoup::VERSION
  spec.authors       = ["snlamm", "mmishra" ]
  spec.email         = ["shmuel.lamm@gmail.com"]

  spec.summary       = "With this gem, a user can set a custom alphabet and alphabatize words with it"
  spec.description   = ""
  spec.homepage      = "https://github.com/snlamm/alphabet_soup_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
 
  #if spec.respond_to?(:metadata)
   # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
    #raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end
 

  spec.files         = ["lib/alphabet_soup.rb", "lib/alphabet_soup/version.rb", "lib/alphabet_soup/alphabet_class.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
