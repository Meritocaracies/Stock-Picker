stocks = [48, 55, 53, 47, 63, 53, 44, 56, 67]

def stock_picker(stocks)
  min_price = stocks[0]
  max_profit = 0
  days = [0,0]

  stocks.each_with_index do |price ,index|
    if price < min_price
      puts index #sell = index
      min_price = price
      days[0] = index
    end

    if price - min_price > max_profit
      max_profit = price - min_price
      days[1] = index
    end
  end

  return days
  
end



p stock_picker(stocks)