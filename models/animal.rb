class Animal < ActiveRecord::Base
  belongs_to :user
  belongs_to :dog_breed
  belongs_to :city
end
