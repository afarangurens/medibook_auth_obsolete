class Permiso < ApplicationRecord
    has_and_belongs_to_many :cuentas
end
