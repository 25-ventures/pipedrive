require 'rubygems'
require 'bundler/setup'

task :console do
  require 'pry'
  require 'pipedrive'

  CLIENT = Pipedrive::Client.new(api_token: '008f7b7f04e0737f1d3b2cbfc0ee0708461ca843')

  ARGV.clear
  Pry.start
end

task :default => :console
