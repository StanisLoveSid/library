require '../classes/author.rb'
require '../classes/book.rb'
require '../classes/reader.rb'
require '../classes/order.rb'
require '../classes/library.rb'
require 'yaml'

class Downloader
  def initialize
    @db = Library.new
  end
  
  def data_loader
    @db.books << Book.new('Taras Bulba', 'Nikolai Gogol')
    @db.books << Book.new('Kobzar', 'Taras Shevchenko')
    @db.books << Book.new('Ruby programming language', 'Yukihiro Matsumoto')
    @db.books << Book.new('The Master and Margarita', 'Michael Bulgakov')
    @db.books << Book.new('The White Guard', 'Michael Bulgakov')
    @db.books << Book.new('Rich Dad, Poor Dad', 'Robert Kiyosaki')
    @db.books << Book.new('Sheep Chase', 'Haruki Murakami')
    @db.authors << Author.new('Nikolai Gogol','Biography of Nikolai Gogol')
    @db.authors << Author.new('Taras Shevchenko','Biography of Taras Shevchenko')
    @db.authors << Author.new('Yukihiro Matsumoto','Biography of Yukihiro Matsumoto')
    @db.authors << Author.new('Haruki Murakam','Biography of Haruki Murakam')
    @db.authors << Author.new('Robert Kiyosaki','Biography of Robert Kiyosaki')
    @db.authors << Author.new('Michael Bulgakov','Biography of Michael Bulgakov')
    @db.readers << Reader.new('User1', 'user1@email.com', 'city1', 'street1', '1')
    @db.readers << Reader.new('User2', 'user2@email.com', 'city2', 'street2', '2')
    @db.readers << Reader.new('User3', 'user3@email.com', 'city3', 'street3', '3')
    @db.readers << Reader.new('User4', 'user4@email.com', 'city4', 'street4', '4')
    @db.readers << Reader.new('User5', 'user5@email.com', 'city5', 'street5', '5')
    @db.readers << Reader.new('User6', 'user6@email.com', 'city6', 'street6', '6')
    @db.readers << Reader.new('User7', 'user7@email.com', 'city7', 'street7', '7')
    @db.readers << Reader.new('User8', 'user8@email.com', 'city8', 'street8', '8')
    @db.readers << Reader.new('User9', 'user9@email.com', 'city9', 'street9', '9')
    @db.orders << Order.new('Taras Bulba', 'User5', '01.01.2016')
    @db.orders << Order.new('Taras Bulba', 'User5', '02.01.2016')
    @db.orders << Order.new('Taras Bulba', 'User3', '01.01.2016')
    @db.orders << Order.new('Kobzar', 'User5', '05.01.2016')
    @db.orders << Order.new('Kobzar', 'User5', '05.01.2016')
    @db.orders << Order.new('Kobzar', 'User5', '06.01.2016')
    @db.orders << Order.new('Kobzar', 'User5', '01.01.2016')
    @db.orders << Order.new('Rich Dad, Poor Dad', 'User1', '10.01.2016')
    @db.orders << Order.new('Rich Dad, Poor Dad', 'User5', '10.01.2016')
    @db.orders << Order.new('Rich Dad, Poor Dad', 'User5', '08.01.2016')
    @db.orders << Order.new('Rich Dad, Poor Dad', 'User9', '08.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')
    @db.orders << Order.new('Ruby programming language', 'User8', '01.01.2016')

	save_data_to_db

  end

	def save_data_to_db
		File.write("./database.yaml", @db.to_yaml)
	end
end

downloader = Downloader.new
downloader.data_loader

