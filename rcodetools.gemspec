# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rcodetools/version'

Gem::Specification.new do |spec|
  spec.name          = "rcodetools"
  spec.version       = Rcodetools::VERSION
  spec.authors       = ["rubikitch", "Mauricio Fernandez"]
  spec.email         = ['"rubikitch" <rubikitch@ruby-lang.org>', '"Mauricio Fernandez" <mfp@acm.org>']

  spec.summary       = %q{rcodetools is a collection of Ruby code manipulation tools}
  spec.description   = <<EOF
rcodetools is a collection of Ruby code manipulation tools. 
It includes xmpfilter and editor-independent Ruby development helper tools,
as well as emacs and vim interfaces.

Currently, rcodetools comprises:
* xmpfilter: Automagic Test::Unit assertions/RSpec expectations and code annotations
* rct-complete: Accurate method/class/constant etc. completions
* rct-doc: Document browsing and code navigator
* rct-meth-args: Precise method info (meta-prog. aware) and TAGS generation
EOF
  spec.homepage      = "https://github.com/rcodetools/rcodetools"
  spec.license       = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables = %w[rct-complete rct-doc xmpfilter rct-meth-args]
  spec.require_paths = ["lib"]

  spec.has_rdoc = true
  spec.extra_rdoc_files = %w[README.md]
  spec.rdoc_options << "--main" << "README.md" << "--title" << 'rcodetools'
  spec.test_files = Dir["test/test_*.rb"]
  spec.post_install_message = <<EOF

==============================================================================

rcodetools will work better if you use it along with FastRI, an alternative to
the standard 'ri' documentation browser which features intelligent searching,
better RubyGems integration, vastly improved performance, remote queries via
DRb... You can find it at http://eigenclass.org/hiki.rb?fastri and it is also
available in RubyGems format:

    gem install fastri

Read README.emacs and README.vim for information on how to integrate
rcodetools in your editor.

==============================================================================

EOF

  spec.add_development_dependency "rake", "~> 11.2"
end
