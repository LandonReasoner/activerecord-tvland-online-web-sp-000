class Character < ActiveRecord::Base

  belongs_to :actors
  belongs_to :show

  def say_that_thing_you_say 
    "#{self.name} always says: #{self.catchphrase}"
  end 
  
end