def stock_picker(stock_prices)
	if stock_prices.length < 2
		nil
	else
		buy_day, sell_day, max_profit,i = 0,0,0,0
		buy_sell_day = []
		while i < stock_prices.length do			
			j = i+1                      
			while j < stock_prices.length do
				if stock_prices[j] - stock_prices[i] > max_profit
					max_profit = stock_prices[j] - stock_prices[i]
					buy_day, sell_day = i,j
				end
				j += 1
			end
			i += 1                                                                                                                                                                                                                                                                                                                                                                                                               
		end
		buy_sell_day << buy_day << sell_day
	end	
end

print stock_picker([17,3,6,9,15,8,6,1,10])