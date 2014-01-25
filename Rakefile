#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

Dir.glob('lib/tasks/*.rake').each {|r| import r}

#require File.expand_path('../config/application', __FILE__)
#require 'ci/reporter/rake/rspec'     # use this if you're using RSpec

=begin
Flickrful::Application.load_tasks

# Turn off rspec verbosity, so that the
# resultant rspec command, and all the
# spec names, are not echoed to stdout.
# See http://bit.ly/MoOoB3 -Jared 2012-07-19
if defined? RSpec
  task(:spec).clear
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end
end
=end