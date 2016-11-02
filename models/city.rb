class City < ActiveRecord::Base
  belongs_to :state
  has_many :animals
end
