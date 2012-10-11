class User < ActiveRecord::Base
  attr_accessible  :meta_data

  serialize :meta_data, ActiveRecord::Coders::Hstore
end
