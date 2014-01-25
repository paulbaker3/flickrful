require 'flickraw'
require 'bundler/setup'

namespace :flickrful do

  desc "Sets your Flickr credentials"
  task :config do 
    puts "Hello, what should I call you?"
    STDOUT.flush()
    name = STDIN.gets.chomp
    puts "Hi, #{name}. I'm going to help you configure Flickrful."

    puts "Please enter your"
    print "Flickr API Key: "
    api_key = STDIN.gets.chomp

    print "Flickr shared secret: "
    shared_secret = STDIN.gets.chomp

    puts "Storing your API Key and Shared Secret in your bashrc file"

    commands = [
      'touch ~/.bashrc', 
      "echo $'\n\n### Flickrful Settings ###' >> ~/.bashrc",
      "echo $'export FLICKRFUL_USER=#{name}' >> ~/.bashrc",
      "echo $'export FLICKRFUL_API_KEY=#{api_key}' >> ~/.bashrc",
      "echo $'export FLICKRFUL_SHARED_SECRET=#{shared_secret}' >> ~/.bashrc", 
      'source ~/.bashrc'
    ]

    commands.each do |command| 
      Bundler.with_clean_env { system(command) }
    end

    puts "Re run rake flickrful:config to reset these values"
  end  

  desc "Uploads full resolution images to Flickr"
  task :upload do 
    puts 'hello world'
  end

  desc "Displays some interesting stats about your Flickr account"
  task :stats do 
    puts 'hello world'
  end

end