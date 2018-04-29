class Record < ApplicationRecord
  belongs_to :patient, dependent: :destroy
    validates :observation, :clinic, presence: true
end
