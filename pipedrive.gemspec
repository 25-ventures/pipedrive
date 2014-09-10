require './lib/pipedrive/version'

Gem::Specification.new do |s|
  s.name = 'pipedrive'
  s.version = Pipedrive::VERSION
  s.author = 'Ryan Faerman'
  s.email = 'ryan@trepscore.com'
  s.homepage = 'http://github.com/25-ventures/pipedrive'
  s.summary = s.description = 'Interact with Pipedrive'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files test`.split("\n")
  s.require_path = 'lib'

  s.add_dependency 'activesupport'

  s.add_dependency 'faraday',              '>= 0.9.0'
  s.add_dependency 'faraday_middleware',   '>= 0.9.1'
  s.add_dependency 'multi_xml'
  s.add_dependency 'multi_json'
end
