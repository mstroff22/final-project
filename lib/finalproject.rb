require_relative 'scraping.rb'


class Text

  def initialize(ticker_symbol)
    @stock = ticker_symbol
  end

  def textme
    my_stock = Stock.new(@stock)

    account_sid = 'ACed3ed813257f8acedfce46a695216257'
    auth_token = 'cb1dd832eda91ea39319fe6827f1650b'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(
      :from => '+14342605034',
      :to => '+13109889494',
      :body => "Good afternoon Mikey, #{my_stock.name}'s current stock price is #{my_stock.current_price}. Today, the difference in stock price is."
    )



  end


end


