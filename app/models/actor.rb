class Actor < ActiveRecord::Base
  
  has_many :characters

  def full_name 
    '#{self.firs_name} #{self.last_name}'
  end 

end