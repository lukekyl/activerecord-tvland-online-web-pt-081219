class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def Actor::full_name
    self.first_name + self.last_name
  end
  def Actor::list_roles
    self.character + self.character.shows
  end
end
