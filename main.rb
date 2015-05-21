require 'pry'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'tenant.rb'

def menu
  puts `clear`
  puts "--- Landlord Building Directory ---"
  print "What information would you like to access: (t)enant information, (a)partment information, (b)uilding information, or (q)uit?"
  response = gets.chomp.downcase
end


building_one = Building.new floors: 5, address: 'Third Home, London, GAVille', num_of_apartments: 15, age: 100, concierge: true
building_two = Building.new floors: 13, address: '933 Seymour Street, Vancouver, Canada', num_of_apartments: 25, age: 9, concierge: false

apartment_one = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 3, bathrooms: 2
apartment_two = Apartment.new price: 1900, occupied: false, balcony: true, sqft: 1800, bedrooms: 2, bathrooms: 1
apartment_three = Apartment.new price: 710, occupied: false, balcony: false, sqft: 800, bedrooms: 1, bathrooms: 1

tenant_one = Tenant.new name: 'Jen', age: 26, sex: 'female'
tenant_two = Tenant.new name: 'Alex', age: 25, sex: 'male'
tenant_three = Tenant.new name: 'Florian', age: 28, sex: 'male'
tenant_four = Tenant.new name: 'Sead', age: 28, sex: 'male'

[apartment_one, apartment_two, apartment_three].each { |appt|
  building_one.apartments << appt }

apartment_one.tenants << tenant_one
apartment_two.tenants << tenant_two << tenant_four
apartment_three.tenants << tenant_three



def tenant_information
  print "Which building would you like to manage: (T)hird Home or (933) Seymour Street?"
  chosen_building = gets.chomp
  print "Would you like to (l)ist all of the tenants?"
  action = gets.chomp
  case action
  when 'l'
    list_all_tenants
  end
end


def apartment_information
  print "Which building would you like to manage: (T)hird Home or (933) Seymour Street?"
  chosen_building = gets.chomp
  print "Would you like to (c)reate a new apartment or (s)ee if an apartment as being renovated?"
  action = gets.chomp
  case action
  when 'c'
    create_new_apartment
  when 's'
    renovation_check
  end
end


def building_information
  print "Which building would you like to manage: (T)hird Home or (933) Seymour Street?"
  chosen_building = gets.chomp
  print "Would you like to (e)vict everyone or (l)earn more about the building?"
  action = gets.chomp
  case action
  when 'e'
    print "testing"
  when 'l'
    to_s
  end
end


response = menu

while response != 'q'
  case response
  when 't'
    tenant_information
  when 'a'
    apartment_information
  when 'b'
    building_information
  end
  response = menu
end


binding.pry
nil





#this also works like the code above
# [apartment_one, apartment_two, apartment_three].each do |appt|
#   building_one.apartments << appt
# end