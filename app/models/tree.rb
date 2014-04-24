class Tree < ActiveRecord::Base

  validates :species, presence: true

end