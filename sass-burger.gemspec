Gem::Specification.new do |spec|
  spec.name        = 'sass-burger'
  spec.version     = '1.3.1'
  spec.homepage    = 'http://joren.co/sass-burger/'
  spec.authors     = ['Joren Van Hee']
  spec.email       = ['jorenvanhee@gmail.com']
  spec.summary     = %q{A Sass mixin for creating hamburger icons.}
  spec.licenses    = ['MIT']

  spec.add_runtime_dependency('sass', '~> 3.3')

  spec.files = Dir.glob('lib/**/*.*')
  spec.files += ['_burger.scss']
  spec.files += ['README.md']
end