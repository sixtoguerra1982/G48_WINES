class Wine < ApplicationRecord
    has_many :wines_strains
    has_many :strains, through: :wines_strains
end
