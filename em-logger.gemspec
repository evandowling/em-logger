Gem::Specification.new do |s|
  s.name = %q{em-logger}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Dowling"]
  s.date = %q{2011-01-02}
  s.description = %q{ Logging in event machine is a relatively common problem, this gem attempts to solve it in a way that does not impact performance. }
  s.email = %q{dowling.evan@gmail.com}
  s.files = Dir["README", "em-logger.gemspec", "lib/**/*"]
  s.homepage = %q{https://github.com/evandowling/em-logger}
  s.require_paths = ["lib"]
  s.summary = %q{a non-blocking logging service for event machine}
  
end