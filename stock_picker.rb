stocks = [48, 55, 53, 47, 63, 53, 44, 56, 67]

def stock_picker(stocks)
  # Initialize starting variables and array
  min_price = stocks[0]
  max_profit = 0
  days = [0, 0]

  # Loop through days checking for min price and max profit
  stocks.each_with_index do |price, index|
    # Check if the current price is the lowest we've seen
    if price < min_price
      min_price = price
      days[0] = index # Update buy day
    end

    # Check if selling on the current day would give us a better profit
    if price - min_price > max_profit
      max_profit = price - min_price
      days[1] = index # Update sell day
    end
  end

  return days
end

p stock_picker(stocks)