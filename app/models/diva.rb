class Diva < ActiveRecord::Base

  validates :stage_name, presence: true
  validates :high_note, presence: true

  validate do
    unless high_note.to_s.downcase.include?("high")
      errors[:high_note] << "isn't high enough"
    end
  end

end