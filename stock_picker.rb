def stock_picker(stock_prices)
    
    high_profits = stock_prices.reduce(Hash.new(0)) do |hash, buy_number|
        stock_prices.each_with_index do |sell_number, index|
            
            if (index > stock_prices.index(buy_number) && sell_number > buy_number)
                hash[sell_number - buy_number] = [stock_prices.index(buy_number), index]
            end

            hash
        end
        hash
    end

    high_profits[high_profits.keys.max]
end

stock_prices = [17,3,6,9,15,8,6,1,10].shuffle # shuffle for testing
stock_picker(stock_prices)