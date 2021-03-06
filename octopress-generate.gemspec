# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-generate/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-generate"
  spec.version       = Octopress::Generate::VERSION
  spec.authors       = ["KIUCHI Satoshinosuke"]
  spec.email         = ["scholar@hayabusa-lab.jp"]
  spec.description   = %q{Generate Jekyll on Octopress.}
  spec.summary       = %q{Generate Jekyll on Octopress.}
  spec.homepage      = "https://github.com/befool-inc/blog"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "octopress"
  spec.add_development_dependency "rake"
end
