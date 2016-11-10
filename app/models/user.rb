class User < ActiveRecord::Base
    has_many :reviews
    def self.authenticate(user_name, mailadd)
        usr = find_by(user_name: user_name)
    if usr != nil && usr.mailadd == mailadd then
        usr
    else
        return
    end
  end
end
