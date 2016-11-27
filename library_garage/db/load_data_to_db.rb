module Downloader

  def data_loader
    index = 1
   while index < 10 do 
    @readers << Reader.new("User#{index}", "user#{index}@email.com", "city#{index}", "street#{index}", "#{index}")
    index += 1
   end
    @books << Book.new('Taras Bulba', 'Nikolai Gogol')
    @books << Book.new('Kobzar', 'Taras Shevchenko')
    @books << Book.new('Ruby programming language', 'Yukihiro Matsumoto')
    @books << Book.new('The Master and Margarita', 'Michael Bulgakov')
    @books << Book.new('The White Guard', 'Michael Bulgakov')
    @books << Book.new('Rich Dad, Poor Dad', 'Robert Kiyosaki')
    @books << Book.new('Sheep Chase', 'Haruki Murakami')
    @authors << Author.new('Nikolai Gogol','Biography of Nikolai Gogol')
    @authors << Author.new('Taras Shevchenko','Biography of Taras Shevchenko')
    @authors << Author.new('Yukihiro Matsumoto','Biography of Yukihiro Matsumoto')
    @authors << Author.new('Haruki Murakam','Biography of Haruki Murakami')
    @authors << Author.new('Robert Kiyosaki','Biography of Robert Kiyosaki')
    @authors << Author.new('Michael Bulgakov','Biography of Michael Bulgakov')
    order_generator('Taras Bulba', 3)
    order_generator('Rich Dad, Poor Dad', 4)
    order_generator('Kobzar', 4)
    order_generator('Ruby programming language', 11)
  end

  def order_generator(book, how_many)
    how_many.times { @orders << Order.new("#{book}", "User#{rand(1..9)}", "#{rand(1..31)}.#{rand(1..12)}.#{rand(2000..2016)}")}
  end

end
