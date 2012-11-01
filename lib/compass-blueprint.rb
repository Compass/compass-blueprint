require 'compass'
require "compass-blueprint/version"

framework_dir = File.join(File.dirname(__FILE__), '..', 'framework')

Compass::Frameworks.register('blueprint',
  :stylesheets_directory => File.join(framework_dir, 'stylesheets'),
  :templates_directory => File.join(framework_dir, 'templates'))
