# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xcode_server_toolkit/version'

Gem::Specification.new do |spec|
  spec.name          = "xcode_server_toolkit"
  spec.version       = XcodeServerToolkit::VERSION
  spec.authors       = ["Brian Hardy"]
  spec.email         = ["albhard@ponystyle.com"]

  spec.summary       = %q{A helpful utility for interacting with Xcode Server and its bots.}
  spec.homepage      = "https://github.com/lyricsboy/xcode-server-toolkit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency "http"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
