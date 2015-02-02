require 'rake'
Gem::Specification.new do |s|
  s.name        = 'static'
  s.version     = '0.0.1'
  s.date        = '2015-02-02'
  s.summary     = "static pages"
  s.description = "bla bla bla"
  s.authors     = ["ihor.lushchyk@sethq.com"]
  s.email       = "ihor.lushchyk@sethq.com"
  s.files       = FileList[ 'bin/**/*', 'lib/**/*', '[A-Z]*' ].to_a
  s.homepage    = 'http://www.dtm.io/'
  s.license     = 'MIT'

  s.executables << 'static'

  s.add_dependency('therubyracer')
  s.add_dependency('coffee-script')
  s.add_dependency('sass')
  s.add_development_dependency('rspec')
end
