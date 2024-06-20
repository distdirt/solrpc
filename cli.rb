require "bundler/inline"

gemfile do
  source "https://rubygems.org"

  gem "thor", "1.3.1"
end

class SOL < Thor
  desc "ping", "ping the network"
  def ping
    puts "Pinging the network"
  end
end

SOL.start(ARGV)
