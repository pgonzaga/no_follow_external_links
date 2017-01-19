$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'no_follow_external_links/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'no_follow_external_links'
  s.version     = NoFollowExternalLinks::VERSION
  s.authors     = ['Pablo Gonzaga']
  s.email       = ['pgonzaga.uy@gmail.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of NoFollowExternalLinks.'
  s.description = 'TODO: Description of NoFollowExternalLinks.'
  s.license     = 'MIT'
  s.test_files  = Dir['spec/**/*']

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_development_dependency 'rspec-rails', '~> 3.5'
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'byebug', '~> 9.0'
end
