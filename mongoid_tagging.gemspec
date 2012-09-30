# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongoid/tagging/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["linyows"]
  gem.email         = ["linyows@gmail.com"]
  gem.description   = %q{ Gem to add tags features if you're using rails3 with mongoid3 }
  gem.summary       = %q{ This will add a tag field to the Document. }
  gem.homepage      = "https://github.com/linyows/mongoid_tagging"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongoid_tagging"
  gem.require_paths = ["lib"]
  gem.version       = Mongoid::Tagging::VERSION
end
