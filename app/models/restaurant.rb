class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.each do |restaurant|
      if name == "#{restaurant.name}"
        return restaurant
      end
    end
  end

  def reviews
    Review.all.select do |review|
      # binding.pry
      review.restaurant == self
    end
  end

  def customers
    Review.all.map do |review|
      # binding.pry
      if review.restaurant == self
        review.customer
      end
    end
  end
end
