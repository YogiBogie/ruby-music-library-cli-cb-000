module Concerns::Findable

  def find_by_name(name)
    self.all.detect{|x| x.name == name}
  end

  def find_or_create_by_name(title)
    if self.find_by_name(title)
      self.find_by_name(title)
    else
      self.create(title)
    end
  end

end
