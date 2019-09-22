class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_inactive
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def activate_deactivate
    if self.active
      self.active = false
    else
      self.active = true
    end
  end



end