class Patient < ApplicationRecord
  has_many :records
  def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
  end
end
end
