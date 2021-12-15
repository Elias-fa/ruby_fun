class Order
  attr_reader :email, :total

  def initialize(email, total)
    @email = email
    @total = total
  end

  def to_s
    "#{email}: $#{total}"
  end
end

orders = []
1.upto(5) do |num|
  orders << Order.new("customer#{num}@example.com", num * 10)
end

puts orders

class Flyer 
  attr_reader :name, :email, :miles_flown

  def initialize
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |number|
  flyers << Flyers.new("Flyer ")