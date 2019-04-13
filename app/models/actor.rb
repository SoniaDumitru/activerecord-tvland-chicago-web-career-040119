class Actor < ActiveRecord::Base
#can build its associated characters
  has_many :characters
#can build its associated shows through its characters
  has_many :shows, through: :characters
#list its full name
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
#can list all of its shows and characters
  def list_roles
    self.characters.map do |character|
       "#{character.name} - #{character.show.name}"
  end.join(", ")
end
end
