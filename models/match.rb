class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :animal
  def match_user
    return self.animal.user.id
  end
end
