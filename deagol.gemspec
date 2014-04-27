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

  spec.add_dependency('execjs', '~>2.0.2')
  spec.add_dependency('github-markdown', '~>0.6.5')
  spec.add_dependency('gollum-lib', '~>3.0.0')
  spec.add_dependency('liquid', '~>2.6.1')

  spec.add_development_dependency('cucumber', '~>1.3.14')
  spec.add_development_dependency('rspec', '~>2.14.1')
end
