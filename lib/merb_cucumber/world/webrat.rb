require File.join(File.dirname(__FILE__), 'base')
require 'webrat'
require 'cucumber/web/tableish'

module Merb
  module Test
    module World
      class Webrat
        include Base
        include ::Webrat::Methods
      end
    end
  end
end

World do
  Merb::Test::World::Webrat.new
end
