# -*- encoding: utf-8 -*-

Gem::Specification.new do |spec|
  spec.name        = 'sass-burger'
  spec.version     = '1.3.0'
  spec.homepage    = 'http://joren.co/sass-burger/'
  spec.authors     = ['Joren Van Hee']
  spec.description = %q{A Sass mixin for creating hamburger icons.}
  spec.summary     = %q{Sass hamburger icon mixin.}
  spec.licenses    = ['MIT']

  spec.add_runtime_dependency('sass', '~> 3.3')

  spec.files       = %w(
    lib/sass-burger.rb
    sass-burger.gemspec
    _burger.scss
  )
end
