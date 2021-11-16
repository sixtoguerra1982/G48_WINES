class WinesStrain < ApplicationRecord
  belongs_to :wine
  belongs_to :strain
end
