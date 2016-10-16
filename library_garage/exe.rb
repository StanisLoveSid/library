require './classes/author.rb'
require './classes/book.rb'
require './classes/reader.rb'
require './classes/order.rb'
require './classes/library.rb'
require 'yaml'


class Exe

  def initialize
    @database = YAML.load(File.read("./db/database.yaml"))
  end

  def active_reader
    r = @database.orders.group_by { |o| o.reader }.sort_by { |x, y| y.count }
    r.dig(r.size-1,0)
  end

  def popular_book
    sorted_books.dig(0,0)
  end

  def sorted_books
    @database.orders.group_by { |o| o.book }.sort_by { |x, y| y.count }.reverse
  end

  def top_3_book_users
  	sorted_books.first(3).collect {|x, y| y }.flatten.collect {|o| o.reader }.uniq.count
  end

  def save_data_to_file
    File.write("./db/database.yaml", @database.to_yaml)
  end

end

exe = Exe.new
exe.save_data_to_file
puts "Often takes the book: \r\n #{exe.active_reader}"
puts "The most popular book: \r\n #{exe.popular_book}"
puts "How many people ordered one of the three most popular books: \r\n #{exe.top_3_book_users}"