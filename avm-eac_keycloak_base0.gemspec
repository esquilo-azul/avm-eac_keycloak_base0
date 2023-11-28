# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'avm/eac_keycloak_base0/version'

Gem::Specification.new do |s|
  s.name        = 'avm-eac_keycloak_base0'
  s.version     = Avm::EacKeycloakBase0::VERSION
  s.authors     = ['Put here the authors']
  s.summary     = 'Put here de description.'

  s.files = Dir['{lib}/**/*']
  s.required_ruby_version = '>= 2.7'

  s.add_development_dependency 'eac_ruby_gem_support', '~> 0.9'
  s.add_dependency 'eac_ruby_utils', '~> 0.120'
end
