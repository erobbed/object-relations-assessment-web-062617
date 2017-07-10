class Review

  attr_reader :content

  @@all = []

  def initialize(restaurant, customer, content=nil)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    #stack level too deep when using self.customer
    @customer
  end

  def restaurant
    #stack level too deep when using self.restaurant
    @restaurant
  end
end
