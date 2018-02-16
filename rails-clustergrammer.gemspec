
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails/clustergrammer/version"

Gem::Specification.new do |spec|
  spec.name          = "rails-clustergrammer"
  spec.version       = Rails::Clustergrammer::VERSION
  spec.authors       = ["Seok Jong Yu"]
  spec.email         = ["seokjongyu@gmail.com"]

  spec.summary       = %q{A gem for using clustergrammer}
  spec.description   = %q{This gem is for provides clustergrammer for Rails.}
  spec.homepage      = "https://github.com/SeokJongYu/rails-clustergrammer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
