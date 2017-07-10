class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #return first where name == "#{self.first_name} + #{self.last_name}"
    self.all.find {|customer| name == customer.full_name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| name == "#{customer.first_name}"}
  end

  def self.all_names
    self.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end
end
