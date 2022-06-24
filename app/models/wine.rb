class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains
    accepts_nested_attributes_for :wine_strains, allow_destroy: true 
end
