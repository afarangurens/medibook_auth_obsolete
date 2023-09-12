class Cuentum < ApplicationRecord
    has_and_belongs_to_many :permisos
    has_secure_password
end
