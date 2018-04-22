class Record < ApplicationRecord
  belongs_to :patient, dependent: :destroy
end
