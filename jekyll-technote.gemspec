# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-technote"
  spec.version       = "1.1.0"
  spec.authors       = ["mirror4ego"]
  spec.email         = ["mirror4ego@gmail.com"]

  spec.summary       = "TechNote is a three-column Jekyll theme designed for documentation websites."
  spec.homepage      = "https://mirror4ego.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(_layouts|_includes|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.4"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
