$: << File.expand_path('../../lib', __FILE__)

require 'database_cleaner'

RSpec.configure do |c|
  c.before(:suite) { DatabaseCleaner.strategy = :truncation }
  c.after(:each) { DatabaseCleaner.clean }
end

require 'mongoid'
require 'diamonddust'

Mongoid.configure do |c|
  c.master = Mongo::Connection.new.db('diamonddust_test')
end
