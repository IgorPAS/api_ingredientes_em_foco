class User < ApplicationRecord
    has_many :foods, class_name: "food", foreign_key: "reference_id"
    has_secure_password
    validates :email, :cpfCnpj, uniqueness: true, presence: true
    validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
    validates :password, :password_confirmation, presence: true
    validates :password, confirmation: true
end
