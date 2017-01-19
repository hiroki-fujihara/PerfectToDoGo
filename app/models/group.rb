class Group < ActiveRecord::Base
    has_many :reviews
    def self.authenticate(user_name, password)
        gro = find_by(name: name)
    if gro != nil && gro.name == name then
        gro
    else
        return
    end
  end
end
