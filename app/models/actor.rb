class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters

  def full_name 
    "#{self.firs_name} #{self.last_name}"
  end 
  
  def list_roles
    self.characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end.join
  end 

end