class WinesOenologist < ApplicationRecord
  belongs_to :wine
  belongs_to :oenologist
  accepts_nested_attributes_for :oenologist, allow_destroy: true

end
