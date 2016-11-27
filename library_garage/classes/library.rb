require '../classes/author.rb'
require '../classes/book.rb'
require '../classes/reader.rb'
require '../classes/order.rb'
require '../db/load_data_to_db.rb'
require '../statistics.rb'
require 'yaml'

class Library
  include Statistics
  include Downloader

  attr_accessor :books, :orders, :readers, :authors
  def initialize
    @orders = []
    @books = []
    @readers = []
    @authors = []
  end

  def save_data_to_database
  	database = []
  	database.push @orders, @books, @readers, @authors
    File.write("../db/database.yaml", database.to_yaml)
  end

end

library = Library.new
library.data_loader
library.save_data_to_database
puts "Often takes the book: \r\n #{library.active_reader}"
puts "The most popular book: \r\n #{library.popular_book}"
puts "How many people ordered one of the three most popular books: \r\n #{library.top_3_book_users}"
