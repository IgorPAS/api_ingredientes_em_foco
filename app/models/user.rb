class User < ApplicationRecord
    has_many :foods, class_name: "food", foreign_key: "reference_id"
    validates :email, :cpfCnpj, uniqueness: true
    validates :password, confirmation: true
    validates :password, :password_confirmation, presence: true
    has_secure_password
    validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
end
