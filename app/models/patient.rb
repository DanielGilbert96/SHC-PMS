class Patient < ApplicationRecord
  has_many :records
    validates :first_name, :second_name, :address1, :address2, :phone_no , :dob , presence: true
end
