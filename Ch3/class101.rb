class BookInStock
  def initialize(isbn, price)
    @isbn=isbn
    @price=Float(price)
  end

# Accessor methods
  def isbn
    @isbn
  end

  def price
    @price
  end


  # This is effectively overriding the defualt definition of to_s, which is used when printing any string:
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

end

# print shows all instance variables
b1 = BookInStock.new("isbn1",3)
p b1

b2 = BookInStock.new("isbn2",3.14)
p b2

b3 = BookInStock.new("isbn3","5.67")
p b3

# Puts prints as strings
b1 = BookInStock.new("isbn1",3)
puts b1

b2 = BookInStock.new("isbn2",3.14)
puts b2

b3 = BookInStock.new("isbn3","5.67")
puts b3

puts

book = BookInStock.new("isbn1",12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
