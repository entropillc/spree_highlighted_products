$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree_highlighted_products/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "spree_highlighted_products"
  s.version     = SpreeHighlightedProducts::VERSION
  s.authors     = ["Nicholas Watson"]
  s.email       = ["nick@entropi.co"]
  s.homepage    = "http://github.com/entropillc/spree_highlighted_products"
  s.summary     = "Ability to quickly highlight products within Spree"
  s.description = "Ability to quickly highlight products within Spree"

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.0.0'
  s.add_dependency 'spree_auth', '>= 1.0.0'
end
