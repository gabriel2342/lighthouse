class Organization < ApplicationRecord
  has_one_attached :avatar 

  has_many :hours, dependent: :destroy
  accepts_nested_attributes_for :hours
  

  SERVICES_PROVIDED = ["Long Term Housing", "Immediate Housing", "Finding Food", "Family Services", "Living Expenses", 
    "Mental Health Services", "Substance Use", "Immigration", "Prisoner Re-entry", "Domestic Violence", 
    "Former or Current U.S. military?"]
end
