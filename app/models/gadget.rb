class Gadget < ActiveRecord::Base

  validates :model, presence: true

end