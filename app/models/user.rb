class User < ApplicationRecord
  def self.authenticate(name, password)
    user = find_by_name(name)
    if (user && user.password == password)
      user
    else
      nil
    end
  end
end
