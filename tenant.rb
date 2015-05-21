class Tenant

  attr_accessor :name, :age, :sex, :apartment

  def initialize(options = {})
    @name = options[:name]
    @age = options[:age]
    @sex = options[:sex]
    @apartment = options[:apartment] || nil
  end

  def list_all_tenants
    apartment_one.tenants.each { |tenant| puts tenant.name }
    apartment_two.tenants.each { |tenant| puts tenant.name }
    apartment_three.tenants.each { |tenant| puts tenant.name }
    building_one.apartments.tenants.each { |tenant| puts tenant.name }
  end

end

