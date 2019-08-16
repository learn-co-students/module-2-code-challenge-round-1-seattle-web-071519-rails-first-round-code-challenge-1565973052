class Heroine < ApplicationRecord
    validates :super_name, uniqueness: true
end
