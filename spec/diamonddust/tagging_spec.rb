require File.join(File.dirname(__FILE__), %w[.. spec_helper])

class MyModel
  include Mongoid::Document
  include Diamonddust::Tagging
  field :name
end

describe Diamonddust::Tagging do
end
