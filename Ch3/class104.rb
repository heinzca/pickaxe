class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end

  def total_value_in_stock
    # ..
  end

  def number_of_each_isbn
    # ..
  end

end

reader = CsvReader.new
reader.read_in_csv_data("file1.csv")
reader.read_in_csv_data("file2.csv")



class BookInStock
  # Accessor methods - this is a shortcut to defining the Accessor methods
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn=isbn
    @price=Float(price)
  end

  def price_in_cents
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  # This is effectively overriding the defualt definition of to_s, which is used when printing any string:
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

end

book = BookInStock.new("isbn1",33.80)

# puts book
# puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
