class Person < ActiveRecord::Base
  
  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :url
  
  validates_format_of :email, :with => /\A([^\s]+)@([^\s]+)\Z/i, 
    :message => "should look like an email address"
  
  validates_format_of :phone, :with => /\A[0-9\s\(\)\+\-]+\Z/i, 
    :message => "should look like a phone number"
    
  validates_format_of :url, :with => /http[s]?:\/\/.+/i,
    :message => "should look like a website url"
  
end
