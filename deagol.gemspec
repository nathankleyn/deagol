Gem::Specification.new do |spec|
  spec.name = 'deagol'
  spec.version = '0.0.1'
  spec.extra_rdoc_files = ['README.md']
  spec.summary = 'A static documentation generator with search.'
  spec.description = spec.summary + ' See https://github.com/nathankleyn/deagol for more information.'
  spec.author = 'Nathan Kleyn'
  spec.email = 'nathan@nathankleyn.com'
  spec.homepage = 'https://github.com/nathankleyn/deagol'
  spec.files = Dir.glob('{bin,lib}/**/*') + %w[
    LICENSE
    README.md
    Rakefile
  ]
  spec.require_path = 'lib'
  spec.bindir = 'bin'

  spec.add_dependency('execjs', '~>2.7.0')
  spec.add_dependency('gollum-lib', '~>4.1.3')
  spec.add_dependency('liquid', '~>4.0.0')

  spec.add_development_dependency('cucumber', '~>3.1.2')
  spec.add_development_dependency('rspec', '~>3.8.0')
end
