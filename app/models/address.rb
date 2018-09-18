class Address < ApplicationRecord
  belongs_to :customer
  validates :street, :city, :postcode, presence: true
 belongs_to :customer
end
