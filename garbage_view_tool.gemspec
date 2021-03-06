
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "garbage_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "garbage_view_tool"
  spec.version       = GarbageViewTool::VERSION
  spec.authors       = ["Arion Eriksson"]
  spec.email         = ["arion.ericsson@coupa.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provide generated HTML data for Rails applications}
  spec.homepage      = "https://github.com/arioneriksson"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
