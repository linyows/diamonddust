require File.join(File.dirname(__FILE__), %w[.. spec_helper])

class MyModel
  include Mongoid::Document
  include Mongoid::Tagging
  field :name
end

describe Mongoid::Tagging do
end
