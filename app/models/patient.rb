class Patient < ApplicationRecord
  has_many :records
    validates :name, :address, :phone_no , :dob , presence: true
end
