# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    l = 0
    r = 1
    max = 0
    while (r<prices.length)
        if (prices[l]>prices[r])
            l = r
        else
            max = [max, prices[r]-prices[l]].max
        end
        r+=1
    end
    return max
end