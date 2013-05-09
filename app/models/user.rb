class User < ActiveRecord::Base
  
  attr_accessible :name
  
  blogs
  
  def username
    name
  end
  
end
