class Oenologist < ApplicationRecord
    has_many :wines_oenologists
    has_many :wines, through: :wines_oenologists
end
