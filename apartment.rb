class Apartment

  attr_accessor :price, :occupied, :balcony, :sqft, :bedrooms, :bathrooms, :tenants

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
    print "Is the apartment occupied: true or false?"
    @occupied = gets.chomp
    print "Does the apartment have a balcony: true or false?"
    @balcony = gets.chomp
    print "What's the square footage of the apartment?"
    @sqft = gets.chomp.to_i
    print "How many bedrooms does the apartment have?"
    @bedrooms = gets.chomp.to_i
    print "How many bathrooms does the apartment have?"
    @bathrooms = gets.chomp.to_i

    new_apartment = Apartment.new price: "#{@price}", occupied: "#{@occupied}", balcony: "#{@balcony}", sqft: "#{@sqft}", bedrooms: "#{@bedrooms}", bathrooms: "#{@bathrooms}"

    print new_apartment
  end

end