class Strain < ApplicationRecord
    has_many :wines_strains
    has_many :wines, through: :wines_strains
    validates :name, presence: :true 
    validates :name, uniqueness: true
end
