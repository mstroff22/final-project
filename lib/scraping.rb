require 'nokogiri'
require 'open-uri'

class Stock
  def initialize (stock_symbol)

    stockhtml="http://finance.yahoo.com/q;_ylt=AnF23DD6hFfGA4kFe7WLmZiEQohG;_ylu=X3oDMTBxdGVyNzJxBHNlYwNVSCAzIERlc2t0b3AgU2VhcmNoIDEx;_ylg=X3oDMTByMWxvbm9oBGxhbmcDZW4tVVMEcHQDNQR0ZXN0AzUxMjAxOQ--;_ylv=3?uhb=uhb2&fr=uh3_finance_vert_gs&type=2button&s="+ stock_symbol

    @doc=Nokogiri::HTML(open(stockhtml))
  end

  def current_price
    @doc.css(".time_rtq_ticker").children.children.text
  end

  def change_up
    @doc.css(".up_g").children.children.text
  end

  def change_down
     @doc.css(".down_r").children.children.text
  end

  def name
    @doc.css(".title").children.children.text
  end


end





