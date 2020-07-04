require_relative 'lib/p5/version'

Gem::Specification.new do |spec|
  spec.name          = "p5"
  spec.version       = P5::VERSION
  spec.authors       = ["Karmele"]
  spec.email         = ["alu0100966930@ull.edu.es"]

  spec.summary       = %q{Esto es un ejemplo de generación de Gema con Bundler.}
  spec.description   = %q{Aquí se explican los pasos para ir haciendo las pruevas con TDD.}
  spec.homepage      = "https://github.com/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~>2.1.4"
  spec.add_development_dependency "rake", "~>10.0"
  spec.add_development_dependency "rspec", "~>3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"

end
