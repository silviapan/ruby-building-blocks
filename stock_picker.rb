# Stock Picker
# Takes in an array of stock prices and returns the best day to buy and sell 

def stock_picker(stock_prices)
	profit = 0
	for buy in (0..stock_prices.length - 1)
	 for sell in ((buy + 1)..stock_prices.length - 1)
	  diff = stock_prices[sell] - stock_prices[buy]
	  if diff > profit 
	    profit = diff
	    best_days = [buy, sell]
	  end
	 end
	end
	puts "Buy on #{best_days[0]} and sell on #{best_days[1]} for a profit of #{profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]