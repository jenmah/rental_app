class Building

  attr_accessor :floors, :address, :num_of_apartments, :age, :concierge, :apartments, :tenants

  def initialize(options = {})
    @floors = options[:floors]
    @address = options[:address]
    @num_of_apartments = options[:num_of_apartments]
    @age = options[:age]
    @concierge = options[:concierge]
    @apartments = options[:apartments] || []
  end


end


