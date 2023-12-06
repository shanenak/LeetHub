# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
    l=0
    r=piles.max
    while (r-l>1)
        puts "l, r "+ l.to_s + r.to_s
        
        mid = ((r+l)/2).floor()
        res = check_k(mid, piles, h)
        if res
            r=mid
        else
            l=mid
        end
        
    end
    return r
end

def check_k(k, piles, h)
    check_h = 0;
    piles.each do |pile|
        check_h += (pile+k-1)/k
    end
    puts "check_h "+ check_h.to_s
    return check_h<=h
end