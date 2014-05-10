require File.expand_path('../lib/rubtor/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'rubtor'
  s.version = Rubtor::Version::STRING
  s.date = Date.today
  s.summary = 'Wrapper for libtorrent'
  s.authors = ['yuri-g']
  s.files = Dir['lib/**/*.rb'] + Dir['ext/**/*.cpp'] + Dir['ext/**/extconf.rb'] + Dir['ext/**/*.h']
  s.require_paths = ['lib', 'ext']
  s.extensions = Dir['ext/**/extconf.rb']
end
