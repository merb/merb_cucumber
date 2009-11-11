require 'rubygems'

# Use current merb-core sources if running from a typical dev checkout.
lib = File.expand_path('../../../merb/merb-core/lib', __FILE__)
$LOAD_PATH.unshift(lib) if File.directory?(lib)
require 'merb-core'
require 'merb-gen'

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'templater/spec/helpers'

Merb.disable(:initfile)

Spec::Runner.configure do |config|
  config.include Templater::Spec::Helpers
end
