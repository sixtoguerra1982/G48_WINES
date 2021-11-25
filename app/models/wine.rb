class Wine < ApplicationRecord
    has_many :wines_strains
    has_many :strains, through: :wines_strains
    accepts_nested_attributes_for :wines_strains, allow_destroy: true
    has_many :wines_oenologists
    has_many :oenologists, through: :wines_oenologists
    accepts_nested_attributes_for :wines_oenologists, allow_destroy: true
    

end
