require 'compass'
require "compass-blueprint/version"

Compass::Frameworks.register('blueprint', :path => File.join(File.dirname(__FILE__), '..', 'framework', 'blueprint'))
