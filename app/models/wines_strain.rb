class WinesStrain < ApplicationRecord
  belongs_to :wine
  belongs_to :strain
  accepts_nested_attributes_for :strain, allow_destroy: true
  
  # default_scope { order('strains.name DESC') }
end
