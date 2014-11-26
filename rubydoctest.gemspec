# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubydoctest/version'

Gem::Specification.new do |spec|
  spec.name          = "rubydoctest"
  spec.version       = Rubydoctest::VERSION
  spec.authors       = ['Duane Johnson', 'Tom Locke', 'Dr Nic Williams']
  spec.email         = ["duane.johnson@gmail.com"]
  spec.summary       = %q{Ruby version of Python's doctest tool, but a bit different.}
  spec.homepage      = "https://github.com/tablatom/rubydoctest"
  spec.license       = "MIT"
  spec.metadata      = {
                        'repository' => 'https://github.com/tablatom/rubydoctest',
                        'wiki' => 'https://github.com/tablatom/rubydoctest'
                       }
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.bindir        = 'bin'
  spec.test_files    = spec.files.grep(%r{^(test|doc)/})
  spec.extra_rdoc_files = ["History.txt", "License.txt", "PostInstall.txt", "README.rdoc"]
  rdoc_options = ["--main", "README.rdoc"]
  spec.require_paths = ["lib"]
  spec.post_install_message = File.read(File.join(File.dirname(__FILE__), 'PostInstall.txt'))

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
