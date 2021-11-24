class Wine < ApplicationRecord
    has_many :wines_strains
    has_many :strains, through: :wines_strains
    accepts_nested_attributes_for :wines_strains, allow_destroy: true
    has_many :wines_oenologists
    has_many :oenologist, through: :wines_oenologists
end
