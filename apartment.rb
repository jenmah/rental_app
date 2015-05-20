class Apartment

  attr_accessor :tenants

  def initialize(options = {} )
    @price = options[:price]
    @occupied = options[:occupied]
    @balcony = options[:balcony]
    @sqft = options[:sqft]
    @bedrooms = options[:bedrooms]
    @bathrooms = options[:bathrooms]
    @tenants = options[:tenants] || []
  end

  def create_new_apartment
    print "What's the price of the apartment?"
    @price = gets.chomp.to_i
    print "Is the apartment occupied?"
    @occupied = gets.chomp
    print "Does the apartment have a balcony?"
    @balcony = gets.chomp
    print "What's the square footage of the apartment?"
    @sqft = gets.chomp.to_i
    print "How many bedrooms does the apartment have?"
    @bedrooms = gets.chomp.to_i
    print "How many bathrooms does the apartment have?"
    @bathrooms = gets.chomp.to_i
  end

end