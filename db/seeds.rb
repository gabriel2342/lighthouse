# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

service_names = ["Long Term Housing", "Immediate Housing", "Finding Food", "Family Services", "Living Expenses", 
                 "Mental Health Services", "Substance Use", "Immigration", "Prisoner Re-entry", "Domestic Violence", 
                 "Former or Current U.S. military?"]
service_names.each do |name|
  Service.create(name: name)
end
