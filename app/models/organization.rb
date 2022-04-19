class Organization < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :hours, dependent: :destroy
  accepts_nested_attributes_for :addresses

  def hours_attributes=(hours_attributes)
    hours_attributes.each do |i, hour_attributes|
      self.addresses.build(hour_attributes)
    end
  end
end
