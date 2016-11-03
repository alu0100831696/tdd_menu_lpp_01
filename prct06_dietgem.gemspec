# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prct06_dietgem/version'

Gem::Specification.new do |spec|
  spec.name          = "prct06_dietgem"
  spec.version       = Prct06Dietgem::VERSION
  spec.authors       = ["alu0100831696", "alu0100843101"]
  spec.email         = ["alu0100831696@ull.edu.es\n", "alu0100843101@ull.edu.es\n"]

  spec.summary       = %q{Diet Ruby Gem.}
  spec.description   = %q{Gema ruby que representa menús de una dieta.}
  spec.homepage      = "https://github.com/alu0100831696/tdd_menu_lpp_01"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
