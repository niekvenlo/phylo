# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "phylo/version"

Gem::Specification.new do |spec|
  spec.name          = "phylo"
  spec.version       = Phylo::VERSION
  spec.authors       = ["Nick Beaujean"]
  spec.email         = ["niekvenlo@gmail.com"]

  spec.summary       = %q{Simple CLI local file tree}
  spec.description   = %q{Shows a simple commandline visualization of the local file tree}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ["phylo"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
